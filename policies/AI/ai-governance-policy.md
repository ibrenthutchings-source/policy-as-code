# AI Governance Policy

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-AI-001 | v1.0.0 | July 14, 2026 | Annual | Director of AI Governance |

## 1. Purpose
To ensure AI systems are inventoried, risk-classified, developed, and used responsibly, and that the organization can demonstrate conformity with ISO/IEC 42001 and the EU AI Act.

## 2. Scope
Applies to all AI systems designed, developed, procured, or used by the organization, including internally built models, embedded AI features in third-party software, and general-purpose AI (GPAI) models or services. Applies to all employees and contractors who build, operate, or use such systems.

## 3. Policy Statements

### 3.1 AI System Inventory & Risk Classification
* All AI systems must be registered in the AI system inventory (maintained per [Asset Management §3.1](../security/asset-management.md)) before being put into production or made available to users.
* Each system must be classified as **unacceptable**, **high**, **limited**, or **minimal** risk consistent with the EU AI Act risk tiers (see [EU AI Act Requirements, §5](../../compliance/eu-ai-act-requirements.md)).
* Systems classified as unacceptable risk (e.g., social scoring, manipulative or exploitative systems) are prohibited and must not be developed, procured, or deployed.
* Classification must be re-assessed whenever a system's intended purpose or underlying logic materially changes.

### 3.2 Roles & Responsibilities
* The Director of AI Governance owns this policy and chairs a cross-functional AI review including Security, Legal, and the relevant business owner.
* Business owners of each AI system are accountable for its ongoing conformity with this policy and applicable law.
* Employees may raise concerns about an AI system's behavior or use through the channel defined in [Incident Response §3.1](../security/incident-response.md).

### 3.3 AI Impact Assessment
* High-risk AI systems require a documented impact assessment covering fairness, safety, and effects on individuals or groups prior to deployment.
* Deployments meeting Article 26(10) criteria (e.g., public-sector, banking, insurance use cases) additionally require a fundamental rights impact assessment.
* Impact assessments must be reviewed and re-approved on system material change or at the policy's Annual review cadence, whichever is sooner.

### 3.4 Responsible Development & Human Oversight
* AI system design, development, and testing must follow the organization's standard SDLC controls (see [Change Management](../ITGC/change-management.md)), extended to cover model verification and validation prior to release.
* High-risk and limited-risk AI systems must incorporate mechanisms for effective human oversight appropriate to their risk level, including the ability for a human to override or stop the system.
* Technical documentation and event logs sufficient to demonstrate conformity must be retained for the life of the system plus the applicable regulatory retention period.

### 3.5 Transparency & Disclosure
* Users must be informed when they are interacting with an AI system, unless this is obvious from the context.
* AI-generated or materially AI-modified image, audio, video, or text content released externally must be labeled as such.
* Deployers of emotion recognition or biometric categorization systems must disclose this to affected individuals before use.

### 3.6 Third-Party & GPAI Model Use
* Use of third-party AI models or AI-enabled services must go through vendor due diligence per [Vendor Management §3.1](../security/vendor-management.md), including review of the provider's technical documentation and training-data summary.
* Responsibility for AI Act obligations between the organization and any AI provider must be documented in the applicable vendor contract.
* Use of any general-purpose AI model designated as carrying systemic risk requires Director of AI Governance approval prior to adoption.

---

## 4. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| Dr. Elena Castillo | Director of AI Governance | Approved via PR #29 | July 14, 2026 |
| David Kim | General Counsel | Approved via PR #29 | July 14, 2026 |
| Marcus Vance | Chief Information Security Officer | Approved via PR #29 | July 14, 2026 |
