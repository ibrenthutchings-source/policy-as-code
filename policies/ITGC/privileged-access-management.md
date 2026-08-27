# Privileged Access Management (PAM) Policy

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-IT-004 | v1.0.0 | August 4, 2026 | Annual | Director of IT Operations / CISO |

## 1. Purpose
To govern the definition, provisioning, protection, use, and monitoring of privileged accounts — accounts capable of altering system configuration, bypassing application controls, accessing or modifying production data directly, or granting access to others. Standard end-user access remains governed by [Access Management](access-management.md); this policy sets the elevated requirements that apply on top of it wherever access is privileged.

## 2. Scope
Applies to all human and non-human identities holding elevated entitlements in any production or production-adjacent system, including:
* Infrastructure and platform administrators (Domain Admin, root, AWS/Azure/GCP root and admin roles, hypervisor and OS-level administrators).
* Database administrators and any identity with direct read/write access to production data stores.
* Application super users and configuration administrators in the ERP, HRIS, and MES/manufacturing execution systems.
* DevOps and SRE identities with deployment, pipeline administration, secrets management, or Infrastructure-as-Code apply rights.
* Security tooling administrators, including identity provider, endpoint, and SIEM administrators.
* Non-human privileged identities: service accounts, CI/CD runners, machine identities, API keys, and break-glass accounts.

## 3. Policy Statements

### 3.1 Identification & Inventory of Privileged Access
* Each system owner must define, in writing, which entitlements in their system are privileged, and record them in the central privileged access inventory.
* The inventory must record for every privileged identity: the system, the entitlement, the assigned owner, whether it is human or non-human, its business justification, and its review cadence.
* The inventory must be reconciled against the source systems at least quarterly; identities found in a system but absent from the inventory must be disabled or justified within 5 business days.

### 3.2 Least Privilege & Role Design
* Privileged entitlements must be granted through defined roles, not by direct assignment to individuals, so that entitlements are auditable and revocable as a unit.
* Privileged roles must be scoped to the narrowest system, environment, and data set that permits the task. Blanket organization-wide or global-admin roles require CISO approval and are limited to the minimum count defined in [§3.4](#34-account-limits--separation-of-identities).
* Standing (always-on) privileged access is prohibited where the platform supports just-in-time elevation. Where standing access is unavoidable, it must be justified in the inventory and reviewed quarterly.

### 3.3 Provisioning & Approval
* Privileged access requests require approval from both the requester's manager **and** the system owner. Self-approval is prohibited in all cases.
* Requests must state the business justification and, where applicable, an expiry date. Time-bound access must be granted with an automatic expiry rather than relying on manual revocation.
* Privileged access for contractors and third parties must be time-bound to the engagement, sponsored by a named internal employee, and revoked on engagement close.
* Provisioning must originate from an authoritative identity record consistent with [Hire to Retire §2.2](../business_cycles/hire-to-retire.md); privileged access must never be granted on a verbal or email request alone.

### 3.4 Account Limits & Separation of Identities
* Privileged activity must be performed using a dedicated administrative account, distinct from the individual's standard user account. Administrative accounts must not be used for email, browsing, or other daily activity.
* Shared and generic administrative accounts are prohibited except where technically unavoidable (e.g., a vendor appliance with a single root account). Each permitted exception must be registered, credential-vaulted, and its use individually attributable through the vault session log.
* The number of holders of the highest-tier entitlements (Domain Admin, cloud root/organization owner, production database owner) must be minimized, documented, and reported to the CISO quarterly.

### 3.5 Authentication & Credential Protection
* Phishing-resistant multi-factor authentication is required for every privileged authentication event, including elevation within a session.
* Privileged credentials must be stored in an approved credential vault or secrets manager, never in code, configuration files, spreadsheets, ticket text, or chat.
* Vaulted privileged passwords must be rotated automatically on a defined interval and immediately upon a holder's departure, role change, or suspected compromise.
* Interactive privileged access to production must originate from a managed, hardened administrative workstation or an authorized privileged access gateway; access from unmanaged personal devices is prohibited.

### 3.6 Just-in-Time Elevation & Session Control
* Where supported, privileged entitlements must be granted just-in-time through an approval workflow, activated for a defined maximum duration, and automatically revoked at expiry.
* Elevation requests must capture the requester, the entitlement, the justification, the approver, and the ticket or incident reference.
* Privileged sessions to production systems must be brokered through a session management capability that records the session and terminates it on idle timeout.

### 3.7 Break-Glass & Emergency Access
* Each critical system must have a documented break-glass account for use when normal privileged paths are unavailable.
* Break-glass credentials must be vaulted under dual control, and their use must automatically generate a real-time alert to the CISO and the system owner.
* Every break-glass activation must be reviewed within 24 hours, documented against an incident or change ticket, and followed by credential rotation. Emergency changes executed under break-glass remain subject to post-facto approval per [Change Management §3.2](change-management.md).

### 3.8 Non-Human Privileged Identities
* Service accounts, machine identities, and API keys with privileged entitlements must have a named human owner accountable for their use and review.
* Interactive logon must be disabled for service accounts, and their credentials must be vaulted and rotated on the same cadence as human privileged credentials.
* Privileged CI/CD and automation identities must use short-lived, workload-bound credentials (e.g., OIDC federation) rather than long-lived static keys wherever the platform supports it.
* Unused non-human privileged identities must be disabled after 90 days of inactivity.

### 3.9 Monitoring, Logging & Alerting
* All privileged authentication, elevation, and administrative actions must be logged to a centralized log store that privileged users themselves cannot alter or delete.
* The following must generate alerts for security review: creation or modification of a privileged role or account, addition of a member to a highest-tier group, disabling of logging or security tooling, break-glass use, and privileged authentication from an unexpected location or unmanaged device.
* Alerts must be triaged under [Incident Response](../security/incident-response.md); confirmed unauthorized privileged use is treated as a security incident.

### 3.10 Revocation & Recertification
* Privileged access must be revoked immediately on termination and re-evaluated at every internal transfer; prior-role privileged entitlements must be removed rather than accumulated.
* Privileged accounts inactive for 60 days must be disabled — a stricter threshold than the 90-day standard-account rule in [Access Management §3.3](access-management.md).
* Privileged access is recertified quarterly; the review methodology, evidence, and SoD evaluation are governed by [Privileged Access Segregation of Duties](privileged-access-sod.md).

## 4. Key Controls

| Control ID | Control Description | Frequency | Type |
| :--- | :--- | :--- | :--- |
| PAM-01 | Privileged access inventory is reconciled to source systems; unregistered privileged identities are disabled or justified. | Quarterly | Detective |
| PAM-02 | Privileged access requests require manager and system owner approval; self-approval is system-blocked. | Per request | Preventive |
| PAM-03 | Phishing-resistant MFA is enforced on all privileged authentication and elevation. | Continuous | Preventive (Automated) |
| PAM-04 | Privileged credentials are vaulted and rotated on schedule and on holder departure. | Per policy interval | Preventive |
| PAM-05 | Just-in-time elevation expires automatically at the approved duration. | Per activation | Preventive (Automated) |
| PAM-06 | Break-glass use triggers real-time alert and is reviewed within 24 hours with credential rotation. | Per activation | Detective |
| PAM-07 | Privileged activity logs are written to an immutable store outside administrator control. | Continuous | Detective |
| PAM-08 | Non-human privileged identities have a named owner and are disabled after 90 days of inactivity. | Quarterly | Detective |
| PAM-09 | Privileged accounts are revoked on termination and re-evaluated at transfer. | Per event | Preventive |

## 5. Roles & Responsibilities

| Role | Responsibility |
| :--- | :--- |
| System Owners | Define what constitutes privileged access in their system; approve grants; perform quarterly recertification. |
| IT Operations | Operate the credential vault, PAM tooling, and elevation workflows; execute provisioning and revocation. |
| CISO / Security Operations | Set PAM standards, monitor and triage privileged-access alerts, approve highest-tier and standing-access exceptions. |
| Internal Audit / Compliance | Independently test PAM controls and report unremediated exceptions to the Audit Committee. |
| Privileged Users | Use dedicated administrative accounts and managed devices; never share or store credentials outside the vault. |

---

## 6. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| *Pending* | Director of IT Operations | Pending PR approval | |
| *Pending* | Chief Information Security Officer | Pending PR approval | |
| *Pending* | Compliance Manager | Pending PR approval | |
