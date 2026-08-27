package policy.ai.context_chain_monitoring_test

import rego.v1
import data.policy.ai.context_chain_monitoring as ctx

base_system := {"ai_system_id": "ai-loan-underwriter", "risk_tier": "high"}

clean_entry(seq, parent_seq) := {
	"seq": seq,
	"type": "conversation_history",
	"source_id": sprintf("src-%d", [seq]),
	"hash": sprintf("hash-%d", [seq]),
	"timestamp": "2026-08-26T00:00:00Z",
	"parent_seq": parent_seq,
	"source_trust": "trusted",
	"logged": true,
	"contains_pii": false,
	"age_days": 1,
}

test_allow_with_clean_chain if {
	input := {
		"system": base_system,
		"context_chain": [clean_entry(0, null), clean_entry(1, 0)],
		"human_oversight": {"approved": true},
	}
	ctx.allow with input as input
	count(ctx.deny with input as input) == 0
}

test_deny_empty_chain_for_high_risk_system if {
	input := {"system": base_system, "context_chain": [], "human_oversight": {"approved": true}}
	some msg in ctx.deny with input as input
	startswith(msg, "CTX-001")
}

test_warn_not_deny_empty_chain_for_minimal_risk_system if {
	input := {
		"system": {"ai_system_id": "ai-chatbot-faq", "risk_tier": "minimal"},
		"context_chain": [],
	}
	count(ctx.deny with input as input) == 0
	some msg in ctx.warn with input as input
	startswith(msg, "CTX-010")
}

test_deny_missing_required_field if {
	bad_entry := object.remove(clean_entry(0, null), ["hash"])
	input := {
		"system": base_system,
		"context_chain": [bad_entry],
		"human_oversight": {"approved": true},
	}
	some msg in ctx.deny with input as input
	startswith(msg, "CTX-002")
}

test_deny_unlogged_entry if {
	bad_entry := object.union(clean_entry(0, null), {"logged": false})
	input := {
		"system": base_system,
		"context_chain": [bad_entry],
		"human_oversight": {"approved": true},
	}
	some msg in ctx.deny with input as input
	startswith(msg, "CTX-003")
}

test_deny_broken_parent_link if {
	bad_entry := clean_entry(1, 99)
	input := {
		"system": base_system,
		"context_chain": [bad_entry],
		"human_oversight": {"approved": true},
	}
	some msg in ctx.deny with input as input
	startswith(msg, "CTX-004")
}

test_deny_duplicate_seq if {
	input := {
		"system": base_system,
		"context_chain": [clean_entry(0, null), clean_entry(0, null)],
		"human_oversight": {"approved": true},
	}
	some msg in ctx.deny with input as input
	startswith(msg, "CTX-005")
}

test_deny_untrusted_source_without_review if {
	bad_entry := object.union(clean_entry(0, null), {"source_trust": "untrusted"})
	input := {
		"system": base_system,
		"context_chain": [bad_entry],
		"human_oversight": {"approved": true},
	}
	some msg in ctx.deny with input as input
	startswith(msg, "CTX-006")
}

test_allow_untrusted_source_with_completed_review if {
	reviewed_entry := object.union(
		clean_entry(0, null),
		{"source_trust": "untrusted", "trust_review": {"reviewed": true, "reviewer": "sec-review-bot"}},
	)
	input := {
		"system": base_system,
		"context_chain": [reviewed_entry],
		"human_oversight": {"approved": true},
	}
	count(ctx.deny with input as input) == 0
}

test_deny_untrusted_source_without_human_oversight if {
	reviewed_entry := object.union(
		clean_entry(0, null),
		{"source_trust": "untrusted", "trust_review": {"reviewed": true}},
	)
	input := {
		"system": base_system,
		"context_chain": [reviewed_entry],
		"human_oversight": {"approved": false},
	}
	some msg in ctx.deny with input as input
	startswith(msg, "CTX-007")
}

test_deny_undisclosed_pii if {
	bad_entry := object.union(clean_entry(0, null), {"contains_pii": true, "disclosed": false})
	input := {
		"system": base_system,
		"context_chain": [bad_entry],
		"human_oversight": {"approved": true},
	}
	some msg in ctx.deny with input as input
	startswith(msg, "CTX-008")
}

test_warn_retention_exceeded if {
	stale_entry := object.union(clean_entry(0, null), {"age_days": 200})
	input := {
		"system": base_system,
		"context_chain": [stale_entry],
		"human_oversight": {"approved": true},
	}
	count(ctx.deny with input as input) == 0
	some msg in ctx.warn with input as input
	startswith(msg, "CTX-009")
}

test_report_shape if {
	input := {
		"system": base_system,
		"context_chain": [clean_entry(0, null)],
		"human_oversight": {"approved": true},
	}
	r := ctx.report with input as input
	r.allow == true
	r.ai_system_id == "ai-loan-underwriter"
	r.risk_tier == "high"
}
