# Information Security Incident Response Policy

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-SEC-001 | v1.0.0 | July 14, 2026 | Annual | Chief Information Security Officer |

## 1. Purpose
To ensure information security incidents, including those involving AI systems, are identified, triaged, contained, and resolved consistently, and that lessons learned are fed back into the control environment.

## 2. Scope
Applies to all employees, contractors, and systems (including AI systems in scope of [ai-governance-policy.md](../AI/ai-governance-policy.md)) that generate, process, or are otherwise a source of a security event.

## 3. Policy Statements

### 3.1 Identification & Reporting
* All employees and contractors must report suspected or confirmed security events to the Security Operations channel within **1 hour** of discovery.
* Automated monitoring and logging sources (see [DevOps & Configuration §3.1](../ITGC/devops-configuration.md)) must feed into a central alerting mechanism reviewed by security personnel.
* AI system anomalies (e.g., model misuse, unexpected output, suspected data poisoning) must be reported through the same channel and tagged as AI-related for routing to the AI Governance Lead.

### 3.2 Classification & Triage
* Every reported event must be triaged and assigned a severity (Critical / High / Medium / Low) within **4 business hours** of receipt.
* Severity is based on data sensitivity, system criticality, and, for AI-related events, potential impact to individuals or rights (informed by [ai-governance-policy.md §3.3](../AI/ai-governance-policy.md)).
* Events confirmed as incidents must be logged in the incident register with a unique incident ID.

### 3.3 Response & Containment
* Critical and High severity incidents require activation of the incident response team, led by a designated Incident Commander, within **1 hour** of classification.
* Containment actions (e.g., access revocation, network isolation, model rollback) must be documented in the incident record as they are taken.
* Serious incidents involving high-risk AI systems must be escalated to the AI Governance Lead for external reporting assessment under applicable law (see [EU AI Act Requirements, §8](../../compliance/eu-ai-act-requirements.md)).

### 3.4 Evidence Handling & Post-Incident Review
* Logs, system state, and other evidence relevant to an incident must be preserved using a documented chain-of-custody procedure before remediation actions alter them.
* A post-incident review must be completed within **10 business days** of incident closure for all Critical and High severity incidents, documenting root cause and corrective actions.
* Corrective actions must be tracked to closure and reviewed at the next Independent Review of Information Security.

---

## 4. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| Marcus Vance | Chief Information Security Officer | Approved via PR #26 | July 14, 2026 |
| Emily Ross | Compliance Manager | Approved via PR #26 | July 14, 2026 |
