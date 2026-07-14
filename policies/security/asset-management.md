# Asset & Information Classification Management Policy

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-SEC-002 | v1.0.0 | July 14, 2026 | Annual | Director of IT Operations |

## 1. Purpose
To ensure all information and associated assets (hardware, software, and data, including datasets and models used by AI systems) are inventoried, classified, and handled according to their sensitivity and criticality.

## 2. Scope
Applies to all corporate-owned or corporate-managed hardware, software licenses, and information assets, and to the datasets and trained models in scope of [ai-governance-policy.md](../AI/ai-governance-policy.md).

## 3. Policy Statements

### 3.1 Asset Inventory & Ownership
* IT must maintain a complete inventory of hardware, software, and data assets, including an owner accountable for each asset.
* AI datasets and models must be recorded in the inventory with their source, owner, and intended use (see [ai-governance-policy.md §3.1](../AI/ai-governance-policy.md)).
* The inventory must be reconciled against procurement and HR offboarding records on a **quarterly** basis.

### 3.2 Information Classification & Labelling
* Information must be classified as **Public**, **Internal**, **Confidential**, or **Restricted** at the point of creation or receipt.
* Classification must be indicated in document metadata, file naming, or system labels; Restricted data requires encryption at rest and in transit.
* Training, validation, and test data used by AI systems must inherit the classification of its most sensitive constituent record.

### 3.3 Acceptable Use of Assets
* Assets may only be used for authorized business purposes consistent with their classification.
* Removable media and personal cloud storage are prohibited for Confidential or Restricted data absent a documented exception.

### 3.4 Asset Return, Reuse & Secure Disposal
* All corporate assets must be returned to IT upon termination or role change, coordinated with [Access Management §3.2](../ITGC/access-management.md) revocation timelines.
* Storage media must be securely wiped or destroyed prior to reuse or disposal, with disposal certificates retained for Restricted-classified assets.

---

## 4. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| Sarah Jenkins | Director of IT Operations | Approved via PR #27 | July 14, 2026 |
| Marcus Vance | Chief Information Security Officer | Approved via PR #27 | July 14, 2026 |
