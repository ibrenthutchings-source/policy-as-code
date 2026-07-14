# ISO/IEC 42001:2023 — AI Management System Control Catalog

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-COMP-002 | v1.0.0 | July 14, 2026 | Annual | Director of AI Governance |

## 1. Purpose
To catalog the management-system clauses and Annex A controls of ISO/IEC 42001:2023 (the AI Management System, or "AIMS", standard) and map each to the organization's internal control environment, establishing certification readiness and gap tracking for AI systems the organization designs, develops, deploys, or uses.

## 2. Scope
Applies to all AI systems (including machine learning models, generative AI tools, and third-party AI services) used in or provided by the organization, and to the personnel, processes, and data supporting them. Clause numbering below is indicative and should be verified against the licensed standard text prior to a formal certification audit.

## 3. Control Status Legend
| Status | Meaning |
| :--- | :--- |
| **Implemented** | An approved internal policy or documented procedure fully addresses the requirement. |
| **Partial** | Some elements are addressed; residual gap remains. |
| **Gap** | No internal policy currently addresses this requirement. |

## 4. Management System Clauses (4–10)

| Clause | Requirement | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| 4 | Context of the organization | Determine internal/external issues and interested parties relevant to the AIMS. | *Not documented* | Gap |
| 5 | Leadership | Establish AI policy, roles, responsibilities, and management commitment. | [AI Governance Policy](../policies/AI/ai-governance-policy.md) | Implemented |
| 6 | Planning | Address risks/opportunities; set AI objectives; plan AI impact assessments. | [AI Governance §3.1, §3.3](../policies/AI/ai-governance-policy.md) | Partial |
| 7 | Support | Provide resources, competence, awareness, communication, and documented information. | *Not documented — no AI competence/training program* | Gap |
| 8 | Operation | Plan and control operational processes across the AI system lifecycle. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md), [Change Management](../policies/ITGC/change-management.md) | Implemented |
| 9 | Performance evaluation | Monitor, measure, analyze, and audit the AIMS. | *Not documented* | Gap |
| 10 | Improvement | Address nonconformities and drive continual improvement. | [Incident Response §3.4](../policies/security/incident-response.md) (incident-driven improvement only, not full AIMS improvement cycle) | Partial |

## 5. Annex A Controls

### A.2 — Policies Related to AI
| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.2.2 | AI policy | Establish and communicate a top-level policy for responsible AI development/use. | [AI Governance Policy](../policies/AI/ai-governance-policy.md) | Implemented |
| A.2.3 | Alignment with other organizational policies | Ensure the AI policy is consistent with related policies (security, data, HR). | [Controls Crosswalk](controls-crosswalk.md) cross-references AI Governance against Security/ITGC policies, but no formal alignment review process exists | Partial |
| A.2.4 | AI policy review | Review the AI policy at planned intervals or upon significant change. | [AI Governance Policy](../policies/AI/ai-governance-policy.md) (Annual review cycle) | Implemented |

### A.3 — Internal Organization
| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.3.2 | AI roles and responsibilities | Assign and communicate roles for AI risk, development, and oversight. | [AI Governance §3.2](../policies/AI/ai-governance-policy.md) | Implemented |
| A.3.3 | Reporting of concerns | Provide a channel for employees to raise AI-related concerns. | [AI Governance §3.2](../policies/AI/ai-governance-policy.md), [Incident Response §3.1](../policies/security/incident-response.md) | Implemented |

### A.4 — Resources for AI Systems
| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.4.2 | Resource documentation | Document resources (data, tooling, compute, people) needed across the AI lifecycle. | [Asset Management §3.1](../policies/security/asset-management.md) (data/model resources only, not tooling or people) | Partial |
| A.4.3 | Data resources | Identify and document data resources used by AI systems. | [Asset Management §3.1](../policies/security/asset-management.md) | Implemented |
| A.4.4 | Tooling resources | Identify and document tooling used to build/operate AI systems. | [DevOps & Configuration](../policies/ITGC/devops-configuration.md) (general CI/CD tooling only) | Partial |
| A.4.5 | System and computing resources | Identify and document compute/infrastructure resources. | [DevOps & Configuration §3.1](../policies/ITGC/devops-configuration.md) (IaC baselines) | Partial |
| A.4.6 | Human resources | Ensure personnel involved in AI systems have appropriate competence. | *Not documented* | Gap |

### A.5 — Assessing Impacts of AI Systems
| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.5.2 | AI system impact assessment process | Establish a process to assess impacts of AI systems on individuals/groups/society. | [AI Governance §3.3](../policies/AI/ai-governance-policy.md) | Implemented |
| A.5.3 | Documentation of assessed impacts | Document the outcomes of AI impact assessments. | [AI Governance §3.3](../policies/AI/ai-governance-policy.md) (requires assessment but does not prescribe a documentation template) | Partial |
| A.5.4 | Assessing AI system impact on individuals/groups | Assess fairness, safety, and rights impacts on affected parties. | [AI Governance §3.3](../policies/AI/ai-governance-policy.md) | Implemented |
| A.5.5 | Assessing societal impacts of AI systems | Assess broader societal impacts (e.g., environmental, labor). | [AI Governance §3.3](../policies/AI/ai-governance-policy.md) (covers fairness/safety, not environmental or labor impact) | Partial |

### A.6 — AI System Life Cycle
| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.6.2 | AI system life cycle management processes | Define documented processes covering the full AI system life cycle. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md), [Change Management](../policies/ITGC/change-management.md) | Implemented |
| A.6.2.2 | Objectives for responsible AI development | Define objectives (fairness, transparency, robustness) prior to development. | [AI Governance §3.3](../policies/AI/ai-governance-policy.md) (objectives implied by impact assessment, not separately documented) | Partial |
| A.6.2.3 | Documentation of system design and development | Document design decisions, model architecture, and intended use. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md) (requires technical documentation, no design-doc template) | Partial |
| A.6.2.4 | AI system verification and validation | Verify/validate AI systems against requirements before deployment. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md), [Change Management §3.2](../policies/ITGC/change-management.md) | Implemented |
| A.6.2.5 | Deployment | Control the deployment of AI systems into production. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md), [Change Management](../policies/ITGC/change-management.md), [DevOps & Configuration](../policies/ITGC/devops-configuration.md) | Implemented |
| A.6.2.6 | AI system operation and monitoring | Monitor deployed AI systems for performance and drift. | [Incident Response §3.1](../policies/security/incident-response.md) (anomaly reporting only, no proactive drift monitoring) | Partial |
| A.6.2.7 | AI system technical documentation | Maintain technical documentation sufficient to demonstrate conformity. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md) | Implemented |
| A.6.2.8 | AI system recording of event logs | Log events across the AI system lifecycle to support traceability. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md) | Implemented |

### A.7 — Data for AI Systems
| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.7.2 | Data for development and enhancement of AI systems | Define requirements for data used to train/tune AI systems. | *Not documented* | Gap |
| A.7.3 | Acquisition of data | Govern the acquisition/sourcing of data, including provenance and licensing. | *Not documented* | Gap |
| A.7.4 | Quality of data for AI systems | Define/verify data quality criteria (accuracy, completeness, representativeness). | *Not documented* | Gap |
| A.7.5 | Data provenance | Track the origin and lineage of data used by AI systems. | *Not documented* | Gap |
| A.7.6 | Data preparation | Govern data preparation activities (labeling, cleaning, augmentation). | *Not documented* | Gap |

### A.8 — Information for Interested Parties
| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.8.2 | System documentation | Provide documentation describing the AI system to relevant interested parties. | [AI Governance §3.5](../policies/AI/ai-governance-policy.md) (disclosure requirements only, not a documentation deliverable) | Partial |
| A.8.3 | External reporting | Establish a process for reporting AI-related issues to external parties. | [Incident Response §3.3](../policies/security/incident-response.md) (escalation for external reporting assessment, not a defined external reporting process) | Partial |
| A.8.4 | Communication of incidents | Communicate AI incidents to affected interested parties as appropriate. | [Incident Response §3.3](../policies/security/incident-response.md) | Implemented |
| A.8.5 | Information for interested parties (transparency) | Provide interested parties with information needed to understand AI outputs/limitations. | [AI Governance §3.5](../policies/AI/ai-governance-policy.md) | Implemented |

### A.9 — Use of AI Systems
| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.9.2 | Processes for responsible use of AI systems | Define processes governing how employees may use AI systems. | [AI Governance §3.1, §3.4](../policies/AI/ai-governance-policy.md) | Implemented |
| A.9.3 | Objectives for responsible use of AI systems | Define responsible-use objectives (e.g., human oversight, non-discrimination). | [AI Governance §3.4](../policies/AI/ai-governance-policy.md) (human oversight only, non-discrimination not separately stated) | Partial |
| A.9.4 | Intended use of AI system | Document and communicate the intended use and known limitations of each AI system. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md) (technical documentation requirement, no dedicated intended-use statement) | Partial |

### A.10 — Third-Party and Customer Relationships
| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.10.2 | Allocating responsibilities between customers and providers | Clarify AI-related responsibilities in contracts between provider and customer. | [AI Governance §3.6](../policies/AI/ai-governance-policy.md), [Vendor Management §3.2](../policies/security/vendor-management.md) | Implemented |
| A.10.3 | Suppliers | Manage AI-specific risk in supplier relationships (e.g., foundation model vendors). | [AI Governance §3.6](../policies/AI/ai-governance-policy.md), [Vendor Management §3.1](../policies/security/vendor-management.md) | Implemented |
| A.10.4 | Customers | Provide customers information needed to responsibly use AI systems/services. | *Not documented* | Gap |

## 6. Gap Summary

As of the effective date above, **16 of 37** cataloged Annex A controls are fully **Implemented**, **13** are **Partial**, and **7** are **Gap**. Publishing the [AI Governance Policy](../policies/AI/ai-governance-policy.md) closed the A.2 (AI policy), A.3 (roles), most of A.5 (impact assessment), A.6 (lifecycle), A.9 (responsible use), and A.10 (third-party) gaps. The remaining gaps are concentrated in **A.7 (data governance)** — dataset quality, provenance, and preparation controls specific to AI training data are not yet documented anywhere in the repository — and in management-system Clause 7 (competence/training) and Clause 9 (performance evaluation). Closing A.7 should be the next priority, since it underpins both this standard's data controls and the EU AI Act's Article 10 data governance requirement (see [EU AI Act Requirements, §7](eu-ai-act-requirements.md)).

---

## 7. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| Dr. Elena Castillo | Director of AI Governance | Approved via PR #24 | July 14, 2026 |
| Marcus Vance | Chief Information Security Officer | Approved via PR #24 | July 14, 2026 |
