# Hire to Retire (H2R) Policy

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-HR-002 | v1.0.0 | August 4, 2026 | Annual | VP of Human Resources |

## 1. Purpose
To govern the employee lifecycle from workforce planning and hire through role changes, development, and separation — ensuring that headcount is authorized, employee data is accurate, system and physical access follows the individual's status, and the company meets its labor, safety, and payroll obligations across manufacturing and salaried populations.

## 2. Policy Statements

### 2.1 Workforce Planning & Requisition
* Every hire, including temporary and contract labor placed on the production floor, requires an approved position requisition supported by an approved headcount budget.
* Requisitions must be approved by the hiring manager's supervisor and Finance before an offer is extended. Approval thresholds follow the delegation of authority matrix.
* Contingent workers must be engaged through an approved staffing vendor under **POL-SEC-003 (Vendor Management)** and tracked in the HRIS with a defined end date.

### 2.2 Recruiting, Offer & Onboarding
* Offers of employment may be issued only by Human Resources on an approved offer template; hiring managers may not commit compensation terms directly.
* Pre-employment screening — identity and right-to-work verification, background check, and where required by role, drug screening and physical capability assessment — must be completed and documented before the start date.
* New employees must complete safety orientation, lockout/tagout and machine-specific training where applicable, code of conduct acknowledgement, and information security awareness training within the first 30 days. Employees may not operate production equipment before role-specific certification is recorded.
* HR must create the employee record in the HRIS as the single source of truth. System and badge access are provisioned from the HRIS record under **POL-IT-002 (Access Management)**; access must never be provisioned from an email or verbal request alone.

### 2.3 Employee Master Data Integrity
* Human Resources holds sole maintenance rights over employee master data, including compensation, job classification, cost center, and bank details. Payroll staff may not create employees or change pay rates (see **POL-HR-001, Payroll**).
* Changes to bank account details require secondary verification through an out-of-band confirmation with the employee before taking effect.
* All master data changes must be system-logged with maker and approver identity, and a change report must be reviewed by HR management each pay cycle.

### 2.4 Compensation, Performance & Role Changes
* Annual compensation adjustments and incentive payouts must be approved within the approved compensation budget by the functional VP and the Chief Human Resources Officer.
* Promotions, transfers, and cost center changes must be effected through an approved job change action in the HRIS. Access rights must be re-evaluated at the point of transfer, and prior-role entitlements revoked — accumulated access from role changes is prohibited.
* Performance reviews must be documented at least annually for all regular employees; performance improvement plans and disciplinary actions must be reviewed by HR before issuance.

### 2.5 Training, Certification & Workforce Compliance
* Role-required certifications (forklift, crane, confined space, hazardous materials, quality inspection qualification) must be tracked in the HRIS or Learning Management System with expiry dates.
* Managers must receive automated notice at least 30 days before certification expiry. Employees whose required certification has lapsed must be removed from the affected task until requalified.
* Working time, break, and overtime practices must comply with applicable labor law and any collective bargaining agreement in force at each facility.

### 2.6 Separation & Offboarding
* All separations — voluntary, involuntary, retirement, or end of contingent assignment — must be initiated by HR in the HRIS, which triggers the offboarding workflow.
* System access, VPN, email, and privileged accounts must be disabled no later than the end of the effective separation date; for involuntary terminations, access must be disabled concurrent with notification.
* Badge access, keys, tooling, laptops, mobile devices, and other company assets must be recovered and recorded under **POL-SEC-002 (Asset Management)**. Outstanding items must be reported to HR and Payroll before final pay is released.
* Final pay, accrued leave payout, and benefits continuation notices must be issued within the timeframe required by applicable jurisdiction.
* Retirement and pension elections must be documented and processed by the Benefits team independently of Payroll processing.

### 2.7 Records, Privacy & Retention
* Employee records containing personal or health data must be stored in access-restricted systems, with medical and accommodation records held separately from the general personnel file.
* Employee data must be retained per the records retention schedule and disposed of securely at end of life.

## 3. Key Controls

| Control ID | Control Description | Frequency | Type |
| :--- | :--- | :--- | :--- |
| H2R-01 | Hires are supported by an approved requisition within approved headcount budget. | Per transaction | Preventive |
| H2R-02 | Background and right-to-work screening is completed prior to start date. | Per transaction | Preventive |
| H2R-03 | Safety and role-certification training is completed before equipment operation. | Per transaction | Preventive |
| H2R-04 | HRIS is the sole trigger for access provisioning; access requests without an HRIS record are rejected. | Per transaction | Preventive (Automated) |
| H2R-05 | HR management reviews the employee master data change report each pay cycle. | Per pay cycle | Detective |
| H2R-06 | Access entitlements are re-evaluated and stale rights revoked at each internal transfer. | Per transaction | Preventive |
| H2R-07 | System access is disabled by the effective separation date; terminated-user access is reconciled to the HRIS. | Quarterly | Detective |
| H2R-08 | Company assets are recovered and recorded before final pay release. | Per transaction | Preventive |
| H2R-09 | Certification expiry report is reviewed and lapsed employees are removed from affected tasks. | Monthly | Detective |

---

## 4. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| *Pending* | VP of Human Resources | Pending PR approval | |
| *Pending* | Director of EHS | Pending PR approval | |
| *Pending* | Chief Information Security Officer | Pending PR approval | |
