# Third-Party & Vendor Security Management Policy

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-SEC-003 | v1.0.0 | July 14, 2026 | Annual | Chief Information Security Officer |

## 1. Purpose
To manage information security risk arising from suppliers, cloud providers, and other third parties, including providers of third-party AI models and services.

## 2. Scope
Applies to all vendors, contractors, and cloud or SaaS providers with access to corporate systems or data, and to third-party AI models or AI services used per [ai-governance-policy.md §3.6](../AI/ai-governance-policy.md).

## 3. Policy Statements

### 3.1 Supplier Risk Assessment & Due Diligence
* Vendors must undergo a security risk assessment proportional to their data access and criticality before onboarding.
* Third-party AI model providers must additionally be assessed for training data provenance, licensing terms, and known model risk disclosures (see [ISO 42001 Controls, A.10](../../compliance/iso-42001-controls.md)).

### 3.2 Security Requirements in Contracts
* Contracts with vendors handling Confidential or Restricted data (per [Asset Management §3.2](asset-management.md)) must include security, confidentiality, breach-notification, and right-to-audit clauses.
* Contracts involving AI models or AI-enabled services must define responsibility allocation for AI Act obligations between provider and deployer (see [EU AI Act Requirements, §8](../../compliance/eu-ai-act-requirements.md)).

### 3.3 Ongoing Monitoring & Review
* Critical vendors must be reassessed **annually**; all other vendors on a **bi-annual** basis.
* Material changes to a vendor's service (e.g., subcontracting, model version changes, data center relocation) must trigger an out-of-cycle review.

### 3.4 ICT Supply Chain & Cloud Services
* Use of cloud services must be approved by IT and reviewed against the organization's data classification requirements before adoption.
* A current list of approved cloud and AI service providers must be maintained and referenced during procurement.

---

## 4. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| Marcus Vance | Chief Information Security Officer | Approved via PR #28 | July 14, 2026 |
| David Miller | Director of Procurement | Approved via PR #28 | July 14, 2026 |
