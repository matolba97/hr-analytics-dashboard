# Native semantic model

The existing Import model was enhanced in place through Power BI Modeling MCP. Its three dimensions, seven facts and dedicated measure helper now carry explicit role names. Supported table Rename operations updated native dependencies; no source CSV, column schema, measure business logic or relationship topology changed.

| Object | Role and grain | Key relationships |
|---|---|---|
| Dim_Department | Dimension; one current department | Unique Department Key filters Dim_Employee and Fact_Recruitment |
| Dim_Employee | Dimension; one supplied employee master record | Employee Key filters six employee facts; Department Key links to Dim_Department |
| Dim_Date | Dimension; one contiguous calendar day | Date filters seven fact date roles; five alternatives remain inactive |
| Fact_Attendance | Fact; recorded employee-date observation | Employee Key; active Attendance Date |
| Fact_Payroll | Fact; employee-payroll-month transaction | Employee Key; active Payroll Period, inactive Payment Date |
| Fact_Leave | Fact; leave request | Employee Key; active Start Date, inactive planned End Date |
| Fact_Recruitment | Fact; candidate application | Department Key; active Application Date, inactive Interview/Joining Dates |
| Fact_Performance | Fact; employee review event | Employee Key; active Review Date |
| Fact_Training | Fact; employee training enrollment | Employee Key; active Start Date, inactive planned End Date |
| Fact_Exit | Fact; employee exit event | Employee Key; active Exit Date |
| Measures_HR | Helper; 120 explicit measures with a hidden anchor row | Intentionally disconnected measure container |

All twenty relationships retain one-to-many cardinality, single-direction filtering and their original active/inactive roles. The existing Departmentâ€“Employee dimension chain shares the same department slicer across workforce and recruitment without duplicate paths. Job, grade and manager remain denormalized on Dim_Employee; creating a separate Dim_Job would change the existing model rather than document it. The Calendar hierarchy, all chronological sort columns, data types and lineage identities are preserved.

Dim_Date does not directly filter Dim_Employee. Lifecycle measures explicitly use selected minimum/maximum dates, capped at the latest payroll month end. Employment eligibility is Hire Date on or before the snapshot and Exit Date blank or strictly after it. On Leave remains employed. The payroll-derived cutoff is a reporting proxy rather than an independent check that each domain or month is complete. In the supplied extract it is 30 June 2025, while attendance observations end 27 June.

Attrition divides selected Exit Date events by exact daily average workforce exposure. Retention follows survivors of the opening workforce cohort and excludes in-period hires. Disjoint date selections require care: lifecycle windows span selected minimum/maximum dates while current exit and transaction rows retain the selected date set. Current department, job and salary classifications do not reconstruct transfers or compensation changes.

Attendance rates describe recorded rows without assuming scheduled work or missing-day absence. Regular Working Hours exclude overtime; total worked time adds the two components once. Payroll uses month-start Payroll Period; the explicitly named payment-date measure switches to Payment Date. Money has no supplied currency/FX policy. Recruitment application outcomes are not linked to employee-master hires, and employee job/grade filters do not propagate to Fact_Recruitment. Performance averages retain review-event weighting and include self reviews unless filtered. Training completion and leave approval are current status snapshots, not historical workflow events.

All 120 measures have explanatory DAX comments and native Description metadata. See the [measure dictionary](../MEASURE_DICTIONARY.md) for definitions, date roles, blanks and report usage.

Historical enhancement validation recorded 840 exact before/after results across seven filter contexts and 1,976 semantic checks. The aggregate comparison summaries are retained under [validation](validation/PUBLICATION-QA.md). Current portfolio checks and deployment limitations are reported there separately.
