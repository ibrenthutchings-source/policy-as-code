# Receive to Ship (R2S) Policy

| Document ID | Version | Effective Date | Review Cycle | Policy Owner |
| :--- | :--- | :--- | :--- | :--- |
| POL-OPS-002 | v1.0.0 | August 4, 2026 | Annual | VP of Manufacturing Operations |

## 1. Purpose
To govern the physical and system flow of materials from supplier receipt, through production and quality control, to finished goods dispatch — ensuring inventory records are accurate, custody is controlled, and revenue and cost are recognized in the correct period.

## 2. Policy Statements

### 2.1 Goods Receipt
* All inbound materials must be received against an approved Purchase Order at a designated receiving dock. Deliveries without a valid PO reference must be quarantined pending Procurement resolution.
* Receiving personnel must verify quantity and condition and record a system goods receipt in the ERP on the day of physical receipt. Blind receiving (PO quantities suppressed on the receiving screen) is required to prevent confirmation bias.
* Receipt discrepancies (short, over, or damaged shipments) must be logged against the shipment and routed to Procurement and Accounts Payable; the goods receipt feeds the 3-way match defined in **POL-FIN-002 (Procure to Pay)**.
* Receiving staff must not hold vendor master data maintenance or invoice approval rights.

### 2.2 Incoming Quality Inspection & Material Disposition
* Raw materials and components on the controlled-item list must be moved to Quality Hold status on receipt and may not be issued to production until Quality Assurance records an inspection disposition.
* Permitted dispositions are Accept, Reject, Use-As-Is (with documented QA and Engineering approval), or Return-to-Vendor. Each disposition must be system-recorded with the inspector's identity and date.
* Rejected material must be physically segregated in a controlled non-conforming material area and cleared through a Return-to-Vendor authorization or scrap approval.

### 2.3 Inventory Custody & Movement
* All inventory movements — receipt, warehouse transfer, issue to production, and finished goods put-away — must be recorded in the ERP through scanned transactions. Manual inventory adjustments require supervisor approval and a documented reason code.
* Physical custody of inventory must be segregated from inventory record-keeping. Warehouse staff may not post inventory adjustments or write-offs to the general ledger.
* Cycle counting and physical inventory requirements are governed by **POL-OPS-001 (Inventory)**.

### 2.4 Production Execution & Costing
* Production may only commence against a released Work Order or Production Order specifying the approved bill of materials and routing.
* Material issues, labor hours, and machine time must be recorded to the work order as consumed so that work-in-process valuation reflects actual activity.
* Scrap, rework, and yield loss must be reported against the originating work order with a reason code. Scrap exceeding established standard rates must be reviewed monthly by Operations and Cost Accounting.
* Standard costs and routing rates must be reviewed at least annually; variances between standard and actual cost must be analyzed and explained by Cost Accounting each period close.

### 2.5 Finished Goods Release
* Finished goods may not be moved to available-to-ship status until QA has recorded final release, including any required certificate of analysis or conformance documentation.
* Lot and serial traceability must be maintained from raw material receipt through finished goods shipment sufficient to support a product recall within 24 hours of initiation.

### 2.6 Shipping & Dispatch
* Shipments must be made only against an approved sales order or an authorized inter-company transfer order; the shipping system must block dispatch where a customer credit hold is active.
* Picked quantities must be verified against the pick list at the dock, and the bill of lading must be signed by both the warehouse representative and the carrier.
* The shipment transaction must be posted in the ERP on the date the goods leave the facility, and shipping documentation must evidence the transfer of control used for revenue recognition under **POL-FIN-001 (Order to Cash)**.
* At each period end, a shipping cut-off procedure must be performed reconciling the final bills of lading to posted shipments and recorded revenue.

### 2.7 Returns & Reverse Logistics
* Customer returns require an approved Return Material Authorization prior to receipt at the dock. Unauthorized returns must be quarantined and not credited.
* Returned goods must be inspected by QA and dispositioned to restock, rework, or scrap before any inventory value is reinstated.

## 3. Key Controls

| Control ID | Control Description | Frequency | Type |
| :--- | :--- | :--- | :--- |
| R2S-01 | Goods receipt is recorded against an approved PO; unmatched receipts are quarantined. | Per transaction | Preventive |
| R2S-02 | QA inspection disposition is required before controlled material is released from Quality Hold. | Per transaction | Preventive |
| R2S-03 | Inventory adjustments above threshold require supervisor approval with reason code. | Per transaction | Preventive |
| R2S-04 | Work order variance and scrap analysis is reviewed by Cost Accounting. | Monthly | Detective |
| R2S-05 | System blocks shipment against orders on customer credit hold. | Per transaction | Preventive (Automated) |
| R2S-06 | Period-end shipping cut-off reconciliation of bills of lading to posted shipments. | Monthly | Detective |
| R2S-07 | Lot/serial traceability records are tested via a mock recall exercise. | Annual | Detective |

---

## 4. Document Control & Approvals

| Reviewer Name | Role | Signature / Status | Date |
| :--- | :--- | :--- | :--- |
| *Pending* | VP of Manufacturing Operations | Pending PR approval | |
| *Pending* | Director of Quality Assurance | Pending PR approval | |
| *Pending* | Chief Financial Officer | Pending PR approval | |
