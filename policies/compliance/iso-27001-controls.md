# ISO/IEC 27001:2022 — Annex A Control Catalog

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-COMP-001 | v1.0.0 | July 14, 2026 | Annual | Chief Information Security Officer |

## 1. Purpose
To catalog the 93 Annex A controls of ISO/IEC 27001:2022 and map each to the organization's internal control environment, establishing a single source of truth for information security certification readiness and gap tracking.

## 2. Scope
Applies to all information systems, business processes, and internal policies (see `policies/ITGC/` and `policies/business_cycles/`) that store, process, or transmit corporate or customer information. This catalog is the authoritative cross-reference between Annex A controls and the internal policies satisfying them.

## 3. Control Status Legend
| Status | Meaning |
| :--- | :--- |
| **Implemented** | An approved internal policy or documented procedure fully addresses the control. |
| **Partial** | Some elements of the control are addressed; residual gap remains. |
| **Gap** | No internal policy currently addresses this control; remediation required prior to certification audit. |

## 4. Annex A.5 — Organizational Controls (37)

| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.5.1 | Policies for information security | Define and maintain a top-level information security policy set, approved by management. | *No consolidated ISMS policy exists yet* | Gap |
| A.5.2 | Information security roles and responsibilities | Assign and communicate security roles across the organization. | Policy Owner fields in `policies/ITGC/*` | Partial |
| A.5.3 | Segregation of duties | Separate conflicting duties to reduce fraud/error risk. | [Change Management §3.1](../policies/ITGC/change-management.md), [Payroll §2.1](../policies/business_cycles/payroll.md) | Implemented |
| A.5.4 | Management responsibilities | Require management to enforce security policy compliance. | Document Control & Approvals sections, all policies | Partial |
| A.5.5 | Contact with authorities | Maintain contact procedures with regulators/law enforcement. | *Not documented* | Gap |
| A.5.6 | Contact with special interest groups | Maintain threat-intel/industry group relationships. | *Not documented* | Gap |
| A.5.7 | Threat intelligence | Collect and analyze information on emerging threats. | *Not documented* | Gap |
| A.5.8 | Information security in project management | Integrate security into project delivery. | [DevOps & Configuration §3.1](../policies/ITGC/devops-configuration.md) | Partial |
| A.5.9 | Inventory of information and other associated assets | Maintain an asset inventory. | [Asset Management §3.1](../policies/security/asset-management.md) | Implemented |
| A.5.10 | Acceptable use of information and other associated assets | Define rules for acceptable use of assets. | [Asset Management §3.3](../policies/security/asset-management.md) | Implemented |
| A.5.11 | Return of assets | Ensure assets are returned upon termination. | [Asset Management §3.4](../policies/security/asset-management.md), [Access Management §3.2](../policies/ITGC/access-management.md) | Implemented |
| A.5.12 | Classification of information | Classify information by sensitivity and criticality. | [Asset Management §3.2](../policies/security/asset-management.md) | Implemented |
| A.5.13 | Labelling of information | Label information per its classification. | [Asset Management §3.2](../policies/security/asset-management.md) | Implemented |
| A.5.14 | Information transfer | Protect information during transfer, internal and external. | [Asset Management §3.2](../policies/security/asset-management.md) (encryption in transit for Restricted data only) | Partial |
| A.5.15 | Access control | Restrict access to information per business/security requirements. | [Access Management](../policies/ITGC/access-management.md) | Implemented |
| A.5.16 | Identity management | Manage the full lifecycle of identities. | [Access Management §3.1–3.2](../policies/ITGC/access-management.md) | Implemented |
| A.5.17 | Authentication information | Manage allocation and protection of credentials. | [Access Management §3.3](../policies/ITGC/access-management.md) (MFA for privileged access) | Partial |
| A.5.18 | Access rights | Provision, review, and revoke access rights per RBAC. | [Access Management §3.1, §3.4](../policies/ITGC/access-management.md) | Implemented |
| A.5.19 | Information security in supplier relationships | Manage security risk in supplier relationships. | [Vendor Management §3.1](../policies/security/vendor-management.md) | Implemented |
| A.5.20 | Addressing information security within supplier agreements | Embed security requirements in supplier contracts. | [Vendor Management §3.2](../policies/security/vendor-management.md) | Implemented |
| A.5.21 | Managing information security in the ICT supply chain | Manage ICT supply chain security risk. | [Vendor Management §3.4](../policies/security/vendor-management.md) | Implemented |
| A.5.22 | Monitoring, review and change management of supplier services | Monitor supplier security performance and changes. | [Vendor Management §3.3](../policies/security/vendor-management.md) | Implemented |
| A.5.23 | Information security for use of cloud services | Define requirements for acquisition/use of cloud services. | [Vendor Management §3.4](../policies/security/vendor-management.md), [DevOps & Configuration §3.1](../policies/ITGC/devops-configuration.md) | Implemented |
| A.5.24 | Information security incident management planning and preparation | Plan and prepare incident response processes. | [Incident Response §3.1–3.2](../policies/security/incident-response.md) | Implemented |
| A.5.25 | Assessment and decision on information security events | Assess events to determine classification as incidents. | [Incident Response §3.2](../policies/security/incident-response.md) | Implemented |
| A.5.26 | Response to information security incidents | Respond to incidents per documented procedures. | [Incident Response §3.3](../policies/security/incident-response.md) | Implemented |
| A.5.27 | Learning from information security incidents | Use incident knowledge to reduce recurrence. | [Incident Response §3.4](../policies/security/incident-response.md) | Implemented |
| A.5.28 | Collection of evidence | Define procedures for evidence identification and preservation. | [Incident Response §3.4](../policies/security/incident-response.md) | Implemented |
| A.5.29 | Information security during disruption | Maintain security during disruptive events. | *Not documented* | Gap |
| A.5.30 | ICT readiness for business continuity | Plan ICT continuity aligned to business continuity objectives. | *Not documented* | Gap |
| A.5.31 | Legal, statutory, regulatory and contractual requirements | Identify and meet applicable legal/contractual obligations. | [EU AI Act Requirements](eu-ai-act-requirements.md) (AI-specific only) | Partial |
| A.5.32 | Intellectual property rights | Protect IP rights compliance. | *Not documented* | Gap |
| A.5.33 | Protection of records | Protect records from loss, destruction, and unauthorized access. | *Not documented* | Gap |
| A.5.34 | Privacy and protection of PII | Protect personal data per applicable privacy law. | *Not documented* | Gap |
| A.5.35 | Independent review of information security | Independently review the ISMS at planned intervals. | *Not documented* | Gap |
| A.5.36 | Compliance with policies, rules and standards for information security | Regularly verify compliance with internal security policy. | [PR Template compliance checklist](../.github/pull_request_template.md) | Partial |
| A.5.37 | Documented operating procedures | Document and maintain operating procedures for IT activities. | [DevOps & Configuration](../policies/ITGC/devops-configuration.md), [Change Management](../policies/ITGC/change-management.md) | Implemented |

## 5. Annex A.6 — People Controls (8)

| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.6.1 | Screening | Conduct background checks prior to hire, proportional to role risk. | *Not documented* | Gap |
| A.6.2 | Terms and conditions of employment | Include security responsibilities in employment terms. | *Not documented* | Gap |
| A.6.3 | Information security awareness, education and training | Provide ongoing security awareness training. | *Not documented* | Gap |
| A.6.4 | Disciplinary process | Maintain a formal process for policy violations. | *Not documented* | Gap |
| A.6.5 | Responsibilities after termination or change of employment | Define post-employment security obligations. | [Access Management §3.2](../policies/ITGC/access-management.md), [Asset Management §3.4](../policies/security/asset-management.md) | Implemented |
| A.6.6 | Confidentiality or non-disclosure agreements | Require NDAs reflecting protection needs. | *Not documented* | Gap |
| A.6.7 | Remote working | Protect information accessed/processed by remote workers. | *Not documented* | Gap |
| A.6.8 | Information security event reporting | Enable timely reporting of observed/suspected events. | [Incident Response §3.1](../policies/security/incident-response.md) | Implemented |

## 6. Annex A.7 — Physical Controls (14)

| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.7.1 | Physical security perimeters | Define and protect physical security perimeters. | *Not documented* | Gap |
| A.7.2 | Physical entry | Control physical entry to secure areas. | *Not documented* | Gap |
| A.7.3 | Securing offices, rooms and facilities | Design physical security for facilities. | *Not documented* | Gap |
| A.7.4 | Physical security monitoring | Monitor premises for unauthorized physical access. | *Not documented* | Gap |
| A.7.5 | Protecting against physical and environmental threats | Design protection against natural/man-made threats. | *Not documented* | Gap |
| A.7.6 | Working in secure areas | Define controls for working in secure areas. | *Not documented* | Gap |
| A.7.7 | Clear desk and clear screen | Enforce clear desk/screen rules. | *Not documented* | Gap |
| A.7.8 | Equipment siting and protection | Site and protect equipment to reduce risk. | *Not documented* | Gap |
| A.7.9 | Security of assets off-premises | Protect off-site assets. | *Not documented* | Gap |
| A.7.10 | Storage media | Manage storage media through its lifecycle. | *Not documented* | Gap |
| A.7.11 | Supporting utilities | Protect facilities from utility failure. | *Not documented* | Gap |
| A.7.12 | Cabling security | Protect power/data cabling from interception or damage. | *Not documented* | Gap |
| A.7.13 | Equipment maintenance | Maintain equipment to ensure availability/integrity. | *Not documented* | Gap |
| A.7.14 | Secure disposal or re-use of equipment | Verify sensitive data/licensed software is removed prior to disposal/reuse. | [Asset Management §3.4](../policies/security/asset-management.md) | Implemented |

## 7. Annex A.8 — Technological Controls (34)

| ID | Control | Intent | Implementation Reference | Status |
| :--- | :--- | :--- | :--- | :--- |
| A.8.1 | User endpoint devices | Protect information on user endpoint devices. | *Not documented* | Gap |
| A.8.2 | Privileged access rights | Restrict and manage privileged access. | [Access Management §3.3](../policies/ITGC/access-management.md) | Implemented |
| A.8.3 | Information access restriction | Restrict access to information/functions per access control policy. | [Access Management §3.1](../policies/ITGC/access-management.md) | Implemented |
| A.8.4 | Access to source code | Manage read/write access to source code. | [DevOps & Configuration §3.2](../policies/ITGC/devops-configuration.md) (branch protection) | Partial |
| A.8.5 | Secure authentication | Implement secure authentication technologies/procedures. | [Access Management §3.3](../policies/ITGC/access-management.md) (MFA for privileged access) | Partial |
| A.8.6 | Capacity management | Monitor and adjust resource capacity. | *Not documented* | Gap |
| A.8.7 | Protection against malware | Implement anti-malware protections. | *Not documented* | Gap |
| A.8.8 | Management of technical vulnerabilities | Identify and remediate technical vulnerabilities. | *Not documented* (SAST referenced only, [DevOps §3.2](../policies/ITGC/devops-configuration.md)) | Partial |
| A.8.9 | Configuration management | Manage configurations of hardware, software, and networks. | [DevOps & Configuration §3.1](../policies/ITGC/devops-configuration.md) | Implemented |
| A.8.10 | Information deletion | Delete information when no longer required. | [Asset Management §3.4](../policies/security/asset-management.md) (media disposal only, not systematic retention-based deletion) | Partial |
| A.8.11 | Data masking | Mask data per access control policy and business requirements. | *Not documented* | Gap |
| A.8.12 | Data leakage prevention | Apply measures to prevent unauthorized data disclosure. | *Not documented* | Gap |
| A.8.13 | Information backup | Maintain and test backup copies. | *Not documented* | Gap |
| A.8.14 | Redundancy of information processing facilities | Implement redundancy to meet availability requirements. | *Not documented* | Gap |
| A.8.15 | Logging | Produce, store, and protect logs of activities/events. | *Not documented* | Gap |
| A.8.16 | Monitoring activities | Monitor networks/systems for anomalous behavior. | [DevOps & Configuration §3.1](../policies/ITGC/devops-configuration.md) (drift detection only) | Partial |
| A.8.17 | Clock synchronization | Synchronize clocks to an approved time source. | *Not documented* | Gap |
| A.8.18 | Use of privileged utility programs | Restrict/control use of utility programs that can override controls. | *Not documented* | Gap |
| A.8.19 | Installation of software on operational systems | Manage software installation on production systems. | [Change Management](../policies/ITGC/change-management.md) | Implemented |
| A.8.20 | Networks security | Secure, manage, and control networks. | *Not documented* | Gap |
| A.8.21 | Security of network services | Manage security of network services, internal or outsourced. | *Not documented* | Gap |
| A.8.22 | Segregation of networks | Segregate groups of information services/users on networks. | *Not documented* | Gap |
| A.8.23 | Web filtering | Manage access to external websites to reduce malware/policy risk. | *Not documented* | Gap |
| A.8.24 | Use of cryptography | Define rules for effective use of cryptography. | [DevOps & Configuration §3.3](../policies/ITGC/devops-configuration.md) (secrets management only) | Partial |
| A.8.25 | Secure development life cycle | Establish rules for secure software/system development. | [DevOps & Configuration §3.2–3.3](../policies/ITGC/devops-configuration.md) | Partial |
| A.8.26 | Application security requirements | Identify/approve security requirements for applications. | *Not documented* | Gap |
| A.8.27 | Secure system architecture and engineering principles | Establish secure engineering principles. | *Not documented* | Gap |
| A.8.28 | Secure coding | Apply secure coding principles. | *Not documented* | Gap |
| A.8.29 | Security testing in development and acceptance | Define security testing processes in the SDLC. | [Change Management §3.2](../policies/ITGC/change-management.md) (functional/security testing referenced) | Partial |
| A.8.30 | Outsourced development | Direct, monitor, and review outsourced development activity. | *Not documented* | Gap |
| A.8.31 | Separation of development, test and production environments | Separate and secure dev/test/prod environments. | [Change Management §3.1](../policies/ITGC/change-management.md) | Implemented |
| A.8.32 | Change management | Subject changes to information processing facilities to change management procedures. | [Change Management](../policies/ITGC/change-management.md) | Implemented |
| A.8.33 | Test information | Appropriately select, protect, and manage test data. | *Not documented* | Gap |
| A.8.34 | Protection of information systems during audit testing | Plan/agree audit tests and access to minimize disruption. | *Not documented* | Gap |

## 8. Gap Summary

As of the effective date above, **35 of 93** Annex A controls are fully **Implemented**, **16** are **Partial**, and **42** are **Gap**. The addition of [Incident Response](../policies/security/incident-response.md), [Asset Management](../policies/security/asset-management.md), and [Vendor Management](../policies/security/vendor-management.md) closed the A.5 incident-management, asset-inventory, classification, and supplier-relationship gaps. Remaining priority gaps are concentrated in A.8 (logging, vulnerability management, network security, backup) and A.5 (threat intelligence, business continuity, independent review) — see the [Controls Crosswalk](controls-crosswalk.md) for the cross-framework view of what's still undocumented.

---

## 9. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| Marcus Vance | Chief Information Security Officer | Approved via PR #23 | July 14, 2026 |
| Emily Ross | Compliance Manager | Approved via PR #23 | July 14, 2026 |
