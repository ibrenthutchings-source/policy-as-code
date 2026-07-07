# Access Management Policy

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-IT-002 | v1.0.0 | July 7, 2026 | Annual | Director of IT Operations |

## 1. Purpose
To ensure that access to corporate networks, systems, and data is restricted to authorized users based on the principles of Least Privilege and Need-to-Know.

## 2. Scope
Applies to all employees, contractors, third-party vendors, and service accounts requiring access to company systems.

## 3. Policy Statements

### 3.1 Account Provisioning
* Access requests must be formally submitted by the employee's manager through the IT service desk.
* All access grants must align with role-based access control (RBAC) profiles.
* HR must notify IT of all new hires prior to their start date.

### 3.2 Account Deprovisioning
* **Involuntary Termination:** Access must be revoked immediately upon notification from HR (target: < 1 hour).
* **Voluntary Termination:** Access must be revoked by the end of the employee's final working shift.
* **Inactive Accounts:** Accounts inactive for more than 90 days must be automatically disabled.

### 3.3 Administrative & Super User Access
* Privileged access (e.g., Domain Admin, AWS Root, DB Admin) must be restricted to a minimal number of personnel.
* Multi-Factor Authentication (MFA) is strictly required for all administrative access.
* Administrative accounts must not be used for daily activities (e.g., checking email, web browsing).

### 3.4 Periodic Access Reviews
* **Privileged Access:** Reviewed on a **quarterly** basis by system owners.
* **Standard Access:** Reviewed on a **bi-annual** basis.
* Any unauthorized or stale access identified during User Access Reviews (UAR) must be revoked within 5 business days of discovery.

---

## 4. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| Sarah Jenkins | Director of IT Operations | Approved via PR #14 | July 3, 2026 |
| Marcus Vance | Chief Information Security Officer | Approved via PR #14 | July 5, 2026 |