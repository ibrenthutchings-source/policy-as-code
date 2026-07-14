# EU AI Act (Regulation (EU) 2024/1689) — Compliance Requirements Catalog

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-COMP-003 | v1.0.0 | July 14, 2026 | Annual | General Counsel / Director of AI Governance |

## 1. Purpose
To catalog the organization's obligations under the EU Artificial Intelligence Act, map each requirement to the internal control environment, and track readiness against the Act's phased application timeline.

## 2. Scope
Applies to all AI systems the organization places on the market, puts into service, or uses as a deployer within the EU, or whose output is used within the EU, regardless of where the organization is established (per Article 2 extraterritorial scope).

## 3. Applicability Timeline
| Milestone | Date | Applies To |
| :--- | :--- | :--- |
| Prohibited practices (Ch. II, Art. 5) | February 2, 2025 | All organizations |
| Governance, GPAI obligations (Ch. V) | August 2, 2025 | GPAI model providers |
| High-risk system obligations (Ch. III) | August 2, 2026 | Providers/deployers of high-risk AI systems |
| Full application, incl. Annex I product-safety systems | August 2, 2027 | All remaining obligations |

## 4. Control Status Legend
| Status | Meaning |
| :--- | :--- |
| **Implemented** | An approved internal policy or documented procedure fully addresses the requirement. |
| **Partial** | Some elements are addressed; residual gap remains. |
| **Gap** | No internal policy currently addresses this requirement. |

## 5. Step 1 — Risk Classification (Art. 6, Annex III)

| ID | Requirement | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| EUAI-1.1 | AI system inventory and classification | Identify all AI systems used/provided and classify each as unacceptable, high, limited, or minimal risk. | [AI Governance §3.1](../policies/AI/ai-governance-policy.md), [Asset Management §3.1](../policies/security/asset-management.md) | Implemented |
| EUAI-1.2 | Re-classification on material change | Re-assess classification when an AI system's purpose or logic materially changes. | [AI Governance §3.1](../policies/AI/ai-governance-policy.md) | Implemented |

## 6. Article 5 — Prohibited AI Practices (Unacceptable Risk)

| ID | Requirement | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| EUAI-2.1 | Prohibited practices screening | Confirm no in-use or planned AI system performs a prohibited practice (e.g., subliminal manipulation, social scoring, real-time remote biometric ID in public spaces for law enforcement, emotion inference in workplace/education). | [AI Governance §3.1](../policies/AI/ai-governance-policy.md) (unacceptable-risk systems are prohibited outright) | Implemented |

## 7. High-Risk AI System Obligations (Chapter III, Articles 8–15) — Providers

| ID | Article | Requirement | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| EUAI-3.1 | Art. 9 | Risk management system | Establish a continuous, iterative risk management process across the AI system's lifecycle. | [AI Governance §3.3, §3.4](../policies/AI/ai-governance-policy.md) (impact assessment and lifecycle controls exist, no formal continuous risk-management process) | Partial |
| EUAI-3.2 | Art. 10 | Data and data governance | Ensure training/validation/testing data meet quality criteria; examine for bias. | *Not documented — dataset quality/provenance/bias controls remain a gap (see [ISO 42001 Controls, A.7](iso-42001-controls.md))* | Gap |
| EUAI-3.3 | Art. 11 | Technical documentation | Draw up technical documentation before market placement, kept up to date. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md) | Implemented |
| EUAI-3.4 | Art. 12 | Record-keeping (logging) | Enable automatic logging of events over the system's lifetime. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md) | Implemented |
| EUAI-3.5 | Art. 13 | Transparency and provision of information to deployers | Provide instructions for use enabling deployers to interpret and use system output appropriately. | [AI Governance §3.5](../policies/AI/ai-governance-policy.md) (end-user transparency covered; formal instructions-for-use deliverable to deployers not defined) | Partial |
| EUAI-3.6 | Art. 14 | Human oversight | Design systems to be effectively overseen by natural persons during use. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md) | Implemented |
| EUAI-3.7 | Art. 15 | Accuracy, robustness, and cybersecurity | Achieve appropriate accuracy/robustness levels and resilience against attacks. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md), [DevOps & Configuration §3.3](../policies/ITGC/devops-configuration.md) (general cybersecurity controls only, no AI-specific accuracy/robustness metrics) | Partial |
| EUAI-3.8 | Art. 16–22 | Provider obligations (QMS, conformity assessment, registration, corrective action) | Maintain a quality management system; conduct conformity assessment; register in the EU database; act on non-conformities. | *Not documented* | Gap |

## 8. High-Risk AI System Obligations — Deployers (Article 26)

| ID | Article | Requirement | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| EUAI-4.1 | Art. 26(1) | Use per instructions | Use high-risk AI systems in accordance with the provider's instructions for use. | *Not documented* | Gap |
| EUAI-4.2 | Art. 26(2) | Human oversight assignment | Assign human oversight to competent, trained, and authorized personnel. | [AI Governance §3.4](../policies/AI/ai-governance-policy.md) | Implemented |
| EUAI-4.3 | Art. 26(3)–(5) | Input data relevance monitoring | Monitor input data for relevance to the intended purpose. | *Not documented* | Gap |
| EUAI-4.4 | Art. 26(5) | Incident monitoring and reporting | Monitor operation and report serious incidents to the provider/market surveillance authority. | [Incident Response §3.3](../policies/security/incident-response.md) | Implemented |
| EUAI-4.5 | Art. 26(10) | Fundamental rights impact assessment | Conduct a fundamental rights impact assessment prior to deployment (certain deployers, e.g., public bodies, banking, insurance). | [AI Governance §3.3](../policies/AI/ai-governance-policy.md) | Implemented |

## 9. Limited-Risk Transparency Obligations (Article 50)

| ID | Requirement | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| EUAI-5.1 | Disclosure of AI interaction | Inform natural persons they are interacting with an AI system, unless obvious from context. | [AI Governance §3.5](../policies/AI/ai-governance-policy.md) | Implemented |
| EUAI-5.2 | Labeling of synthetic content | Disclose AI-generated or manipulated image/audio/video/text content ("deepfakes") as artificially generated. | [AI Governance §3.5](../policies/AI/ai-governance-policy.md) | Implemented |
| EUAI-5.3 | Emotion recognition / biometric categorization disclosure | Inform individuals when subject to emotion recognition or biometric categorization systems. | [AI Governance §3.5](../policies/AI/ai-governance-policy.md) | Implemented |

## 10. General-Purpose AI (GPAI) Model Obligations (Articles 53–55)

| ID | Article | Requirement | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| EUAI-6.1 | Art. 53 | Technical documentation for GPAI models | Maintain technical documentation and information for downstream providers. | [AI Governance §3.6](../policies/AI/ai-governance-policy.md) (applies if organization becomes a GPAI provider; today the org only consumes third-party GPAI models) | Partial — applicable only if the organization provides a qualifying GPAI model |
| EUAI-6.2 | Art. 53 | Copyright policy | Maintain a policy to comply with EU copyright law, including text/data mining opt-outs. | *Not documented* | Gap |
| EUAI-6.3 | Art. 53 | Training content summary | Publish a sufficiently detailed summary of content used to train the GPAI model. | *Not documented* | Gap — applicable only if the organization provides a qualifying GPAI model |
| EUAI-6.4 | Art. 55 | Systemic-risk GPAI obligations | For GPAI models with systemic risk: model evaluation, adversarial testing, incident tracking, cybersecurity protection. | [AI Governance §3.6](../policies/AI/ai-governance-policy.md) (requires approval to adopt, no evaluation/testing regime defined) | Partial — applicable only if the organization provides a qualifying GPAI model |

## 11. Governance and Internal Enablement

| ID | Requirement | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| EUAI-7.1 | Art. 4 | AI literacy | Ensure staff operating/using AI systems have sufficient AI literacy for their role. | *Not documented* | Gap |
| EUAI-7.2 | — | Designated AI compliance owner | Designate a role accountable for EU AI Act compliance. | Policy Owner field, this document | Implemented |
| EUAI-7.3 | Art. 99 | Penalty exposure awareness | Maintain awareness of penalty tiers (up to €35M or 7% global turnover for prohibited-practice breaches). | This document, §3 | Partial |

## 12. Gap Summary

As of the effective date above, **13 of 26** cataloged requirements are fully **Implemented**, **6** are **Partial**, and **7** are **Gap**. Publishing the [AI Governance Policy](../policies/AI/ai-governance-policy.md) established the AI system inventory/classification, impact assessments, human oversight, and transparency obligations that previously blocked scoping every downstream requirement. Remaining gaps are concentrated in **Article 10 data governance** (EUAI-3.2 — no dataset quality/bias controls, shared with [ISO 42001 A.7](iso-42001-controls.md)), **Article 16–22 provider obligations** (EUAI-3.8 — QMS, conformity assessment, EU database registration, only relevant if the organization becomes a system provider rather than a deployer), and **Article 4 AI literacy** (EUAI-7.1 — no training program). Close EUAI-3.2 and confirm provider-vs-deployer status before the August 2, 2026 high-risk system compliance deadline.

---

## 13. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| David Kim | General Counsel | Approved via PR #25 | July 14, 2026 |
| Dr. Elena Castillo | Director of AI Governance | Approved via PR #25 | July 14, 2026 |
