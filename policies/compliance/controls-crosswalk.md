# Cross-Framework Controls Crosswalk

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-COMP-004 | v1.0.0 | July 14, 2026 | Annual | Compliance Manager |

## 1. Purpose
To provide a single matrix linking overlapping requirements across ISO/IEC 27001, ISO/IEC 42001, and the EU AI Act to the internal policy that satisfies them, so each control theme is documented once rather than duplicated across framework-specific catalogs.

## 2. Scope
Applies to every internal policy in `policies/` and every framework catalog in `compliance/`. This document does not replace the detailed per-framework catalogs ([ISO 27001](iso-27001-controls.md), [ISO 42001](iso-42001-controls.md), [EU AI Act](eu-ai-act-requirements.md)); it indexes them by theme.

## 3. Crosswalk Matrix

| Control Theme | ISO 27001 (Annex A) | ISO 42001 (Annex A) | EU AI Act | Internal Policy |
| :--- | :--- | :--- | :--- | :--- |
| Segregation of duties | A.5.3 | A.3.2 | — | [Segregation of Duties Policy](segregation-of-duties.md) (consolidated conflict matrix covering Change Management, SDLC, and all business cycles) |
| Access control & identity management | A.5.15, A.5.16, A.5.17, A.5.18, A.8.2, A.8.3, A.8.5 | — | — | [Access Management](../ITGC/access-management.md) |
| Change management & SDLC | A.8.19, A.8.25, A.8.29, A.8.31, A.8.32 | Clause 8, A.6.2, A.6.2.4 | Art. 9, Art. 15 | [Change Management](../ITGC/change-management.md), [AI Governance §3.4](../AI/ai-governance-policy.md) |
| Configuration management & IaC | A.8.9, A.8.4, A.8.24 | A.4.4, A.4.5 | — | [DevOps & Configuration](../ITGC/devops-configuration.md) |
| Incident management | A.5.24–A.5.28, A.6.8 | A.6.2.6, A.8.4 | Art. 26(5) | [Incident Response](../security/incident-response.md) |
| Asset inventory & classification | A.5.9, A.5.10, A.5.12, A.5.13, A.5.14 | A.4.2, A.4.3 | — | [Asset Management](../security/asset-management.md) |
| Asset return & secure disposal | A.5.11, A.7.14, A.8.10 | — | — | [Asset Management §3.4](../security/asset-management.md), [Access Management §3.2](../ITGC/access-management.md) |
| Supplier / third-party / ICT supply chain risk | A.5.19, A.5.20, A.5.21, A.5.22, A.5.23 | A.10.2, A.10.3, A.10.4 | Art. 26(1) (instructions for use) | [Vendor Management](../security/vendor-management.md) |
| AI policy & governance roles | — | A.2.2, A.2.3, A.2.4, A.3.2, A.3.3 | Art. 4 (AI literacy) | [AI Governance §3.2](../AI/ai-governance-policy.md) |
| AI risk classification | — | — | Art. 5, Art. 6, Annex III | [AI Governance §3.1](../AI/ai-governance-policy.md) |
| AI impact assessment | — | A.5.2, A.5.3, A.5.4, A.5.5 | Art. 26(10) | [AI Governance §3.3](../AI/ai-governance-policy.md) |
| AI data governance | A.5.34 (PII) | A.7.2, A.7.3, A.7.4, A.7.5, A.7.6 | Art. 10 | [Asset Management §3.2](../security/asset-management.md) (classification only — dataset-specific quality/provenance controls remain a **Gap**) |
| Human oversight & responsible use | — | A.9.2, A.9.3, A.9.4 | Art. 14, Art. 26(2) | [AI Governance §3.4](../AI/ai-governance-policy.md) |
| AI context provenance & chain-of-context monitoring | A.8.15, A.8.16 | A.6.2.4, A.6.2.8 | Art. 12, Art. 14 | [Chain of Context Monitoring](../AI/chain-of-context-monitoring.md), enforced by [`rego/chain_of_context_monitoring.rego`](../AI/rego/chain_of_context_monitoring.rego) |
| Transparency & disclosure | — | A.8.2, A.8.5 | Art. 13, Art. 50 | [AI Governance §3.5](../AI/ai-governance-policy.md) |
| GPAI / third-party AI models | — | A.10.3 | Art. 53, Art. 55 | [AI Governance §3.6](../AI/ai-governance-policy.md), [Vendor Management §3.1](../security/vendor-management.md) |
| Logging, monitoring, and vulnerability management | A.8.8, A.8.15, A.8.16 | A.6.2.8 | Art. 12 | *Not documented — remains a Gap in all three catalogs* |
| Business continuity & disruption | A.5.29, A.5.30 | — | — | *Not documented — remains a Gap* |
| Independent review / internal audit | A.5.35, A.5.36 | Clause 9 | — | *Not documented — remains a Gap* |

## 4. How to Use This Document
* Start here to find which internal policy governs a given control theme across frameworks.
* Use the per-framework catalogs for the authoritative control-by-control status and gap detail.
* When a new policy is added or an existing one is revised, update both the relevant framework catalog(s) and this crosswalk in the same pull request.

---

## 5. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| Emily Ross | Compliance Manager | Approved via PR #30 | July 14, 2026 |
| Marcus Vance | Chief Information Security Officer | Approved via PR #30 | July 14, 2026 |
| Dr. Elena Castillo | Director of AI Governance | Approved via PR #30 | July 14, 2026 |
