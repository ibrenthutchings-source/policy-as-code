# Segregation of Duties (SoD) Policy

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-COMP-005 | v1.0.0 | July 26, 2026 | Annual | Compliance Manager / Internal Audit |

## 1. Purpose
To prevent any single individual from having the ability to both perpetrate and conceal an error or fraud by controlling incompatible functions — authorization, custody, record-keeping, and reconciliation — across financial business processes, IT change management, and the software development lifecycle (SDLC). This policy consolidates the segregation-of-duties (SoD) requirements referenced throughout the business-cycle and ITGC policies into a single conflict matrix with consistent risk ratings, so conflicts are identified and remediated the same way everywhere.

## 2. Scope
Applies to all employees, contractors, and service accounts with system access to: Procure-to-Pay, Order-to-Cash, Payroll, Inventory, Fixed Assets, IT change management, and the SDLC. It applies to access provisioned in the ERP, HRIS, source control, CI/CD, and any other system of record for these processes. This policy governs the *conflict matrix and risk rating methodology*; day-to-day provisioning and periodic access reviews remain governed by [Access Management](../ITGC/access-management.md).

## 3. Policy Statements

### 3.1 Risk Rating Methodology
Every pair of incompatible duties identified in this policy is assigned a risk rating based on (a) the potential financial statement or operational impact if the conflict is exploited, and (b) how easily the resulting error or fraud could be self-concealed by the individual holding both duties.

| Rating | Definition | Minimum Response |
| :--- | :--- | :--- |
| **High** | The combined access allows a single individual to both execute and conceal a material misstatement, unauthorized disbursement, or unauthorized production change with no independent trace. | Must be prevented by hard system control (role-based access control restriction). Where technically infeasible, requires a documented compensating control and sign-off by the process owner and Controller/CISO, reviewed quarterly. |
| **Medium** | The combined access creates a plausible error/fraud path, but a downstream control (e.g., reconciliation, secondary review) would likely detect it before it becomes material. | Should be prevented by RBAC where feasible; otherwise requires a documented compensating control, reviewed semi-annually. |
| **Low** | The combined access is technically incompatible but has limited financial or operational impact, or is inherently self-detecting. | May be accepted with manager attestation during the periodic access review; no separate compensating control required. |

Conflicts rated **High** must never be assigned to a single role or individual without an approved, time-bound exception logged with Internal Audit.

### 3.2 Business Process Conflict Matrices
Duty categories are defined consistently across cycles as: **Initiate** (create/request), **Authorize** (approve), **Record** (post/process in system of record), **Custody** (physical or system control of the asset/funds), and **Reconcile/Review** (independent verification after the fact).

#### 3.2.1 Procure-to-Pay ([P2P Policy](../business_cycles/procure-to-pay.md))
| Incompatible Duties | Risk Rating | Compensating Control if Combined |
| :--- | :--- | :--- |
| Vendor master setup/edit **and** invoice processing or payment disbursement | High | Prohibited by [P2P §2.1](../business_cycles/procure-to-pay.md); vendor master restricted to Procurement Master Data team. |
| Purchase requisition/PO creation **and** PO approval for the same transaction | High | Approval authority matrix enforces dollar-value thresholds by management level ([P2P §2.2](../business_cycles/procure-to-pay.md)). |
| Invoice/3-way match approval **and** disbursement (check signing/wire release) | High | Dual authorization from two executive bank signatories required above $10,000 ([P2P §2.3](../business_cycles/procure-to-pay.md)). |
| AP invoice entry **and** vendor master edit | Medium | Segregated teams per [P2P §2.1](../business_cycles/procure-to-pay.md); UAR confirms no dual assignment. |
| Receiving (goods receipt) **and** invoice approval | Medium | 3-way match requires independent PO, receipt, and invoice sources ([P2P §2.3](../business_cycles/procure-to-pay.md)). |

#### 3.2.2 Order-to-Cash ([O2C Policy](../business_cycles/order-to-cash.md))
| Incompatible Duties | Risk Rating | Compensating Control if Combined |
| :--- | :--- | :--- |
| Customer master/credit limit maintenance **and** sales order entry | High | Master Data Team independent of Sales ([O2C §2.1](../business_cycles/order-to-cash.md)). |
| Cash receipt application **and** ability to alter customer billing terms/credit limits | High | AR clerks applying cash have no billing-term/credit-limit access ([O2C §2.3](../business_cycles/order-to-cash.md)). |
| Bank reconciliation **and** cash receipt processing or sales transaction entry | High | Reconciliation performed by accountant with no receipts/sales access ([O2C §2.3](../business_cycles/order-to-cash.md)). |
| Invoice generation **and** shipment confirmation entry | Medium | Invoicing is system-triggered off proof of shipment, not manually keyed ([O2C §2.2](../business_cycles/order-to-cash.md)). |
| Credit limit override approval **and** order fulfillment initiation | Medium | Credit Manager approval required before fulfillment ([O2C §2.1](../business_cycles/order-to-cash.md)). |

#### 3.2.3 Payroll ([Payroll Policy](../business_cycles/payroll.md))
| Incompatible Duties | Risk Rating | Compensating Control if Combined |
| :--- | :--- | :--- |
| Employee master data / compensation rate maintenance **and** payroll processing | High | Payroll staff cannot create profiles or edit compensation rates ([Payroll §2.1](../business_cycles/payroll.md)). |
| Payroll register preparation **and** payroll register sign-off/funding release | High | Independent sign-off by Payroll Director/Controller required before funding ([Payroll §2.3](../business_cycles/payroll.md)). |
| Payroll bank reconciliation **and** payroll preparation | High | Reconciliation performed by an accountant not involved in preparation ([Payroll §2.3](../business_cycles/payroll.md)). |
| Timesheet entry **and** timesheet approval for the same employee | Medium | Direct supervisor approval required prior to submission ([Payroll §2.2](../business_cycles/payroll.md)). |
| Employee bank account changes **and** payroll disbursement execution | High | Bank account edits processed by HR within HRIS, independent of disbursement ([Payroll §2.1](../business_cycles/payroll.md)). |

#### 3.2.4 Inventory ([Inventory Policy](../business_cycles/inventory.md))
| Incompatible Duties | Risk Rating | Compensating Control if Combined |
| :--- | :--- | :--- |
| Physical custody of inventory **and** inventory record adjustment in the ERP | High | Custody staff cannot adjust records without management override approval ([Inventory §2.1](../business_cycles/inventory.md)). |
| Physical cycle/annual count execution **and** daily custody of the counted items | Medium | Count teams include at least one member without daily custody ([Inventory §2.2](../business_cycles/inventory.md)). |
| Write-off/adjustment approval **and** custody or record-keeping for the same item | High | Adjustments over $5,000 require joint Warehouse Manager and Controller approval ([Inventory §2.3](../business_cycles/inventory.md)). |

#### 3.2.5 Fixed Assets ([Fixed Assets Policy](../business_cycles/fixed-assets.md))
| Incompatible Duties | Risk Rating | Compensating Control if Combined |
| :--- | :--- | :--- |
| Asset disposal authorization **and** physical custody of the asset | High | Disposal Form requires department head and Finance sign-off, independent of custodian ([Fixed Assets §2.3](../business_cycles/fixed-assets.md)). |
| Fixed Asset Register (FAR) maintenance **and** physical verification of assets | Medium | Annual physical verification performed against the FAR by a sampling process, not solely by the FAR maintainer ([Fixed Assets §2.3](../business_cycles/fixed-assets.md)). |
| Capitalization/useful-life determination **and** depreciation posting | Low | Both governed by predefined category schedules ([Fixed Assets §2.2](../business_cycles/fixed-assets.md)); limited discretion reduces risk. |

### 3.3 Change Management & SDLC Conflict Matrix ([Change Management Policy](../ITGC/change-management.md), [DevOps & Configuration Policy](../ITGC/devops-configuration.md))
| Incompatible Duties | Risk Rating | Compensating Control if Combined |
| :--- | :--- | :--- |
| Code authorship **and** approval of the same pull request/change | High | Author cannot approve own code; independent Team Lead/CAB approval required ([Change Mgmt §3.1](../ITGC/change-management.md)); branch protection enforces ≥1 independent reviewer ([DevOps §3.2](../ITGC/devops-configuration.md)). |
| Code development **and** manual production deployment/migration access | High | Migrations executed via automated CI/CD with restricted manual intervention, or by Release Management without dev access ([Change Mgmt §3.1](../ITGC/change-management.md)). |
| QA/testing sign-off **and** authorship of the change under test | High | Testing performed by QA or automated frameworks independent of the author ([Change Mgmt §3.1](../ITGC/change-management.md)). |
| CI/CD pipeline administration (ability to modify pipeline/bypass checks) **and** code merge rights | High | Ephemeral build environments and restricted pipeline admin access ([DevOps §3.3](../ITGC/devops-configuration.md)); pipeline changes follow the same PR review requirement as application code. |
| Infrastructure-as-code (IaC) authorship **and** approval of the same IaC change | High | Same PR/independent-approval requirement applies to IaC as application code ([DevOps §3.1](../ITGC/devops-configuration.md), [§3.2](../ITGC/devops-configuration.md)); manual production drift is prohibited. |
| Secrets/credentials management access **and** application code deployment rights | Medium | Secrets injected at runtime from a dedicated secrets manager, not embedded or handled by deployers directly ([DevOps §3.3](../ITGC/devops-configuration.md)). |
| Emergency change execution **and** post-facto approval of that same change | Medium | Emergency changes require documented post-facto approval within 24 hours by someone other than the executor ([Change Mgmt §3.2](../ITGC/change-management.md)). |
| Change ticket creation/business justification **and** deployment approval | Medium | Deployment approval is a distinct, documented step within the change ticket, separate from the requester ([Change Mgmt §3.2](../ITGC/change-management.md)). |

### 3.4 Compensating Controls for Small Teams
Where team size makes full segregation technically infeasible (e.g., a single DevOps engineer, a two-person Accounting team), the process owner must document an approved compensating control before the conflict is allowed to persist. Acceptable compensating controls include: mandatory independent post-transaction review by a peer or manager, system-enforced dual-approval workflows, exception reporting reviewed by someone outside the conflicting roles, or restricting the conflicting access to a narrow, logged, time-boxed window. Compensating controls for **High**-rated conflicts require sign-off from both the process owner and Internal Audit/Compliance, and must be re-approved on the cadence in [§3.1](#31-risk-rating-methodology).

### 3.5 Monitoring & Enforcement
* SoD conflicts must be evaluated whenever a role is created or modified, and during every periodic access review conducted under [Access Management §3.4](../ITGC/access-management.md).
* High-risk conflicts identified outside an approved compensating control must be remediated within 5 business days, consistent with the remediation timeline in [Access Management §3.4](../ITGC/access-management.md).
* Internal Audit must review the full SoD conflict matrix and all active compensating controls at least annually and report unresolved High-rated conflicts to the Audit Committee.
* This matrix must be updated in the same pull request whenever a referenced business-cycle, Change Management, or DevOps policy changes duty assignments, and the [Controls Crosswalk](controls-crosswalk.md) updated to match.

## 4. Roles & Responsibilities
| Role | Responsibility |
| :--- | :--- |
| Process Owners (Controller, VP Procurement, VP HR, VP Supply Chain, VP Engineering/DevOps) | Own the conflict matrix for their process area; approve compensating controls. |
| Internal Audit / Compliance Manager | Maintain this policy, review compensating controls, escalate unresolved High-rated conflicts. |
| IT / System Administrators | Implement RBAC restrictions that technically prevent High-rated conflicts wherever the system supports it. |
| People Managers | Attest during access reviews that direct reports' combined access does not create an undocumented conflict. |

---

## 5. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| Emily Ross | Compliance Manager | Approved via PR #TBD | July 26, 2026 |
| Robert Vance | Controller | Approved via PR #TBD | July 26, 2026 |
| Marcus Vance | Chief Information Security Officer | Approved via PR #TBD | July 26, 2026 |
