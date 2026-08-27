package policy.ai.context_chain_monitoring

import rego.v1

# METADATA
# title: AI Context Chain Monitoring
# description: >
#   Validates the provenance chain of context (conversation history, RAG
#   documents, tool outputs, memory retrievals, system prompts) assembled
#   for an AI system request, per Chain of Context Monitoring Policy
#   (POL-AI-002) and AI Governance Policy §3.4 (POL-AI-001).
# related_resources:
#   - https://www.iso.org/standard/81230.html
#   - https://artificialintelligenceact.eu/

# -----------------------------------------------------------------------
# Decision
# -----------------------------------------------------------------------

default allow := false

allow if {
	count(deny) == 0
}

# High/limited-risk systems additionally require human oversight approval
# whenever the assembled context contains an untrusted or unverified source.
high_oversight_risk_tiers := {"high", "limited"}

untrusted_trust_levels := {"untrusted", "unverified"}

required_entry_fields := {"seq", "type", "source_id", "hash", "timestamp"}

# -----------------------------------------------------------------------
# CTX-001: risk-classified systems must record a non-empty context chain
# -----------------------------------------------------------------------

deny contains msg if {
	input.system.risk_tier in high_oversight_risk_tiers
	count(input.context_chain) == 0
	msg := sprintf(
		"CTX-001: %s-risk AI system %q submitted a request with no recorded context chain",
		[input.system.risk_tier, input.system.ai_system_id],
	)
}

# -----------------------------------------------------------------------
# CTX-002: every context chain entry must carry the required provenance
# fields (type, source_id, hash, timestamp, seq)
# -----------------------------------------------------------------------

deny contains msg if {
	some entry in input.context_chain
	missing := required_entry_fields - object_keys_present(entry)
	count(missing) > 0
	msg := sprintf(
		"CTX-002: context chain entry seq=%v is missing required field(s): %v",
		[object.get(entry, "seq", "unknown"), missing],
	)
}

object_keys_present(obj) := {k |
	some k in required_entry_fields
	obj[k]
}

# -----------------------------------------------------------------------
# CTX-003: every context chain entry must be written to the audit log
# -----------------------------------------------------------------------

deny contains msg if {
	some entry in input.context_chain
	entry.logged == false
	msg := sprintf(
		"CTX-003: context chain entry seq=%v (source_id=%v) was not logged to the audit trail",
		[entry.seq, entry.source_id],
	)
}

# -----------------------------------------------------------------------
# CTX-004: chain integrity — every non-root entry's parent_seq must
# reference a seq that actually exists in the same chain
# -----------------------------------------------------------------------

known_seqs := {seq | some entry in input.context_chain; seq := entry.seq}

deny contains msg if {
	some entry in input.context_chain
	entry.parent_seq != null
	not entry.parent_seq in known_seqs
	msg := sprintf(
		"CTX-004: context chain entry seq=%v references non-existent parent_seq=%v (broken chain)",
		[entry.seq, entry.parent_seq],
	)
}

# -----------------------------------------------------------------------
# CTX-005: seq values must be unique within the chain
# -----------------------------------------------------------------------

deny contains msg if {
	seq_counts := {seq: count([e | some e in input.context_chain; e.seq == seq]) |
		some entry in input.context_chain
		seq := entry.seq
	}
	some seq, n in seq_counts
	n > 1
	msg := sprintf("CTX-005: context chain seq=%v is used %d times; seq values must be unique", [seq, n])
}

# -----------------------------------------------------------------------
# CTX-006: untrusted or unverified sources must be trust-reviewed before
# being incorporated into the context chain
# -----------------------------------------------------------------------

deny contains msg if {
	some entry in input.context_chain
	entry.source_trust in untrusted_trust_levels
	not entry.trust_review.reviewed == true
	msg := sprintf(
		"CTX-006: context chain entry seq=%v has source_trust=%q but has not passed trust review",
		[entry.seq, entry.source_trust],
	)
}

# -----------------------------------------------------------------------
# CTX-007: high/limited-risk systems require an approved human oversight
# record whenever the chain contains an untrusted/unverified source
# -----------------------------------------------------------------------

deny contains msg if {
	input.system.risk_tier in high_oversight_risk_tiers
	some entry in input.context_chain
	entry.source_trust in untrusted_trust_levels
	not input.human_oversight.approved == true
	msg := sprintf(
		"CTX-007: %s-risk AI system %q incorporated an untrusted source (seq=%v) without approved human oversight",
		[input.system.risk_tier, input.system.ai_system_id, entry.seq],
	)
}

# -----------------------------------------------------------------------
# CTX-008: context entries containing PII must be explicitly disclosed
# (transparency — AI Governance Policy §3.5)
# -----------------------------------------------------------------------

deny contains msg if {
	some entry in input.context_chain
	entry.contains_pii == true
	not entry.disclosed == true
	msg := sprintf(
		"CTX-008: context chain entry seq=%v contains PII but is not marked as disclosed",
		[entry.seq],
	)
}

# -----------------------------------------------------------------------
# Advisory (non-blocking) findings
# -----------------------------------------------------------------------

default max_retention_days := 90

max_retention_days := d if d := input.system.max_retention_days

warn contains msg if {
	some entry in input.context_chain
	entry.age_days > max_retention_days
	msg := sprintf(
		"CTX-009: context chain entry seq=%v is %d days old, exceeding the %d-day retention limit",
		[entry.seq, entry.age_days, max_retention_days],
	)
}

warn contains msg if {
	input.system.risk_tier == "minimal"
	count(input.context_chain) == 0
	msg := sprintf(
		"CTX-010: minimal-risk AI system %q submitted a request with no recorded context chain",
		[input.system.ai_system_id],
	)
}

# -----------------------------------------------------------------------
# Aggregate report for CI / dashboard consumption
# -----------------------------------------------------------------------

report := {
	"allow": allow,
	"ai_system_id": object.get(input, ["system", "ai_system_id"], null),
	"risk_tier": object.get(input, ["system", "risk_tier"], null),
	"deny": deny,
	"warn": warn,
}
