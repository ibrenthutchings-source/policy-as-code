# Chain of Context Monitoring Policy

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-AI-002 | v1.0.0 | August 26, 2026 | Annual | Director of AI Governance |

## 1. Purpose

To ensure that the full chain of context assembled for an AI system request — conversation history, retrieved (RAG) documents, tool outputs, memory retrievals, and system prompts — is provenance-tracked, tamper-evident, and reviewable, so the organization can demonstrate the traceability and human-oversight requirements of [AI Governance Policy §3.4](ai-governance-policy.md) and ISO/IEC 42001 and EU AI Act obligations. This policy is enforced in code by the Rego policy at [`rego/chain_of_context_monitoring.rego`](rego/chain_of_context_monitoring.rego).

## 2. Scope

Applies to every AI system in the inventory (per [AI Governance Policy §3.1](ai-governance-policy.md#31-ai-system-inventory--risk-classification)) that assembles context from more than one source before generating a response, including chatbots and copilots with conversation memory, retrieval-augmented generation (RAG) pipelines, and multi-step or tool-using agents. Applies at every request boundary where context is composed, regardless of whether the request originates from an end user, another system, or an automated pipeline.

## 3. Policy Statements

### 3.1 Context Chain Recording

* Every request to a **high** or **limited** risk AI system must produce and retain a non-empty context chain recording each piece of context incorporated into the request (`CTX-001`).
* Each context chain entry must record, at minimum: its sequence position, type (e.g. conversation history, RAG document, tool output, memory retrieval, system prompt), source identifier, content hash, and timestamp (`CTX-002`).
* Every context chain entry must be written to the centralized, tamper-evident audit log defined in [Privileged Access Management §3.9](../ITGC/privileged-access-management.md#39-monitoring-logging--alerting)-equivalent logging infrastructure; entries that are not logged are treated as a policy violation, not merely a gap (`CTX-003`).

### 3.2 Chain Integrity

* Where a context entry derives from another (e.g. a tool output produced from a prior retrieval), its parent reference must point to an entry that actually exists in the same chain. A reference to a non-existent parent is treated as a broken chain and blocked (`CTX-004`).
* Sequence identifiers within a single context chain must be unique; duplicate sequence numbers indicate a corrupted or replayed chain and are blocked (`CTX-005`).

### 3.3 Source Trust & Human Oversight

* Context sourced from an **untrusted** or **unverified** origin (e.g. an unauthenticated external RAG source, a third-party tool with no attestation) must pass a documented trust review before it is incorporated into a request (`CTX-006`).
* For **high** and **limited** risk AI systems, any request whose context chain includes an untrusted or unverified source additionally requires an approved human oversight record before the request may proceed, consistent with [AI Governance Policy §3.4](ai-governance-policy.md#34-responsible-development--human-oversight) (`CTX-007`).

### 3.4 Transparency for Sensitive Context

* Any context chain entry that contains personal data (PII) must be explicitly marked as disclosed to the affected individual, consistent with [AI Governance Policy §3.5](ai-governance-policy.md#35-transparency--disclosure). Undisclosed PII in the context chain is blocked (`CTX-008`).

### 3.5 Retention

* Context chain entries must not be retained beyond the system's configured maximum retention period (default: 90 days) absent a documented legal hold. Entries exceeding this limit are flagged for review (`CTX-009`, advisory).
* Minimal-risk systems are not required to record a context chain, but an empty chain is flagged for visibility rather than silently accepted (`CTX-010`, advisory).

### 3.6 Enforcement

* The rules in §3.1–3.5 are implemented as an OPA/Rego policy (`policy.ai.context_chain_monitoring`) that must be evaluated at the context-assembly boundary of every in-scope AI system, either inline (deny-on-violation) or as a continuous compliance check feeding the AI system's monitoring dashboard.
* Policy violations (`deny`) must block the request or be remediated within 1 business day if enforced out-of-band; advisory findings (`warn`) must be reviewed at the cadence defined in [AI Governance Policy §3.1](ai-governance-policy.md#31-ai-system-inventory--risk-classification).
* The Rego test suite (`rego/chain_of_context_monitoring_test.rego`) must pass in CI (`opa test policies/AI/rego`) before any change to this policy's logic is merged.

## 4. Key Controls

| Control ID | Control Description | Frequency | Type |
| :--- | :--- | :--- | :--- |
| CTX-001 | High/limited-risk AI requests are blocked if no context chain is recorded. | Per request | Preventive (Automated) |
| CTX-002 | Context chain entries are blocked if missing required provenance fields. | Per request | Preventive (Automated) |
| CTX-003 | Context chain entries are blocked if not written to the audit log. | Per request | Preventive (Automated) |
| CTX-004 | Requests are blocked if a context entry references a non-existent parent. | Per request | Preventive (Automated) |
| CTX-005 | Requests are blocked on duplicate sequence identifiers within a chain. | Per request | Preventive (Automated) |
| CTX-006 | Untrusted/unverified context sources are blocked absent a completed trust review. | Per request | Preventive (Automated) |
| CTX-007 | High/limited-risk requests with untrusted context are blocked absent approved human oversight. | Per request | Preventive (Automated) |
| CTX-008 | Requests are blocked if PII in the context chain is not marked disclosed. | Per request | Preventive (Automated) |
| CTX-009 | Context chain entries exceeding the retention limit are flagged for review. | Continuous | Detective |
| CTX-010 | Minimal-risk requests with an empty context chain are flagged for visibility. | Continuous | Detective |

## 5. Roles & Responsibilities

| Role | Responsibility |
| :--- | :--- |
| Director of AI Governance | Owns this policy; approves exceptions to blocking (`deny`) controls. |
| AI System Owners | Instrument their system to emit a complete context chain and wire policy evaluation into the request path. |
| Security Engineering | Maintains the Rego policy and test suite; operates the audit log referenced by `CTX-003`. |
| Internal Audit / Compliance | Periodically samples `warn` findings and blocked requests to confirm the control is operating as designed. |

---

## 6. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| *Pending* | Director of AI Governance | Pending PR approval | |
| *Pending* | Chief Information Security Officer | Pending PR approval | |
