# Data model dictionary

## Naming conventions

`Dim_` denotes conformed dimensions; `Fact_` denotes event/transaction facts. `Measures_HR` is the dedicated measure container. The bare name `Measures` is reserved by the tabular engine, so the meaningful supported alternative is retained. No bridge or parameter table is invented. `DatasetRoot` remains a Power Query parameter, not a table. Source CSV filenames and source schemas are unchanged.

## Table rename inventory

| Before | After |
|---|---|
| Department | Dim_Department |
| Employee | Dim_Employee |
| Date | Dim_Date |
| Attendance | Fact_Attendance |
| Payroll | Fact_Payroll |
| Leave | Fact_Leave |
| Recruitment | Fact_Recruitment |
| Performance | Fact_Performance |
| Training | Fact_Training |
| Exit | Fact_Exit |
| HR Metrics | Measures_HR |

## Tables

| Table | Role | Actual grain | Primary / unique key |
|---|---|---|---|
| Dim_Department | Dimension | One current department | Department Key |
| Dim_Employee | Dimension | One employee employment spell in the master extract | Employee Key |
| Dim_Date | Dimension | One contiguous calendar day | Date |
| Fact_Attendance | Fact | One employee per recorded attendance date | Attendance ID; unique Employee Key + Attendance Date |
| Fact_Payroll | Fact | One employee per payroll month | Payroll ID; unique Employee Key + Payroll Period |
| Fact_Leave | Fact | One leave request interval | Leave ID |
| Fact_Recruitment | Fact | One candidate application | Recruitment ID |
| Fact_Performance | Fact | One employee review event | Performance ID |
| Fact_Training | Fact | One employee program enrollment | Training ID |
| Fact_Exit | Fact | One recorded employment exit | Exit ID; unique Employee Key in this extract |
| Measures_HR | Helper / dedicated measure container | One technical Anchor row; measures evaluate by context | Anchor (technical) |

## Dim_Department

Department name, location, budget and current department head. Filters Employee and Recruitment.
**Classification:** Dimension. **Grain:** One current department. **Key:** Department Key.

## Dim_Employee

Lifecycle dates and current employee attributes. Job/grade/manager attributes remain denormalized; this is why no Dim_Job is created.
**Classification:** Dimension. **Grain:** One employee employment spell in the master extract. **Key:** Employee Key.

## Dim_Date

Marked date table spanning complete years; Calendar hierarchy and month sorting retained.
**Classification:** Dimension. **Grain:** One contiguous calendar day. **Key:** Date.

## Fact_Attendance

Recorded employee-days, regular working hours and separate overtime. No schedule denominator is implied.
**Classification:** Fact. **Grain:** One employee per recorded attendance date. **Key:** Attendance ID; unique Employee Key + Attendance Date.

## Fact_Payroll

Monthly salary components and reconciliation amounts. Payroll Period is the active date; Payment Date is an alternate role.
**Classification:** Fact. **Grain:** One employee per payroll month. **Key:** Payroll ID; unique Employee Key + Payroll Period.

## Fact_Leave

Recorded request days and snapshot approval status; active Start Date and alternate End Date.
**Classification:** Fact. **Grain:** One leave request interval. **Key:** Leave ID.

## Fact_Recruitment

Application outcomes, dates and scores; Department links directly, with no candidate-to-employee key.
**Classification:** Fact. **Grain:** One candidate application. **Key:** Recruitment ID.

## Fact_Performance

Four score components, source overall rating, promotion recommendation and self-review flag.
**Classification:** Fact. **Grain:** One employee review event. **Key:** Performance ID.

## Fact_Training

Program, cost, certification snapshot and interval dates; not one row per unique participant.
**Classification:** Fact. **Grain:** One employee program enrollment. **Key:** Training ID.

## Fact_Exit

Exit date, reason/type and final rating. Exit day is the first non-employed day in lifecycle calculations.
**Classification:** Fact. **Grain:** One recorded employment exit. **Key:** Exit ID; unique Employee Key in this extract.

## Measures_HR

Holds all 120 existing measures in domain folders. Disconnected by design; does not represent a business fact or dimension.
**Classification:** Helper / dedicated measure container. **Grain:** One technical Anchor row; measures evaluate by context. **Key:** Anchor (technical).

## Relationships and filtering

All twenty existing relationships retain their identities, one-to-many cardinalities, single-direction filters, active/inactive states and date semantics. Dimension keys are unique; facts hold the many-side foreign keys. Department → Employee → six employee facts is a deliberate constellation dimension chain; Department → Recruitment supplies the shared department filter without an ambiguous second path. Employee does not link directly to Date, and managers do not create a recursive relationship.

| One side | Many side | Status / purpose |
|---|---|---|
| Dim_Department[Department Key] | Dim_Employee[Department Key] | Active; current assignment |
| Dim_Department[Department Key] | Fact_Recruitment[Department Key] | Active; application department |
| Dim_Employee[Employee Key] | Fact_Attendance[Employee Key] | Active; employee fact filter |
| Dim_Employee[Employee Key] | Fact_Payroll[Employee Key] | Active; employee fact filter |
| Dim_Employee[Employee Key] | Fact_Leave[Employee Key] | Active; employee fact filter |
| Dim_Employee[Employee Key] | Fact_Performance[Employee Key] | Active; employee fact filter |
| Dim_Employee[Employee Key] | Fact_Training[Employee Key] | Active; employee fact filter |
| Dim_Employee[Employee Key] | Fact_Exit[Employee Key] | Active; employee fact filter |
| Dim_Date[Date] | Fact_Attendance[Attendance Date] | Active; recorded day |
| Dim_Date[Date] | Fact_Payroll[Payroll Period] | Active; payroll month start |
| Dim_Date[Date] | Fact_Leave[Start Date] | Active; request start cohort |
| Dim_Date[Date] | Fact_Recruitment[Application Date] | Active; application cohort |
| Dim_Date[Date] | Fact_Performance[Review Date] | Active; review event |
| Dim_Date[Date] | Fact_Training[Start Date] | Active; enrollment start cohort |
| Dim_Date[Date] | Fact_Exit[Exit Date] | Active; exit event |
| Dim_Date[Date] | Fact_Payroll[Payment Date] | Inactive; explicit USERELATIONSHIP event measure |
| Dim_Date[Date] | Fact_Recruitment[Interview Date] | Inactive; explicit USERELATIONSHIP event measure |
| Dim_Date[Date] | Fact_Recruitment[Joining Date] | Inactive; explicit USERELATIONSHIP event measure |
| Dim_Date[Date] | Fact_Leave[End Date] | Inactive; explicit USERELATIONSHIP event measure |
| Dim_Date[Date] | Fact_Training[End Date] | Inactive; explicit USERELATIONSHIP event measure |

## Model View and dependencies

The existing Model View layout is arranged with dimensions above the employee facts and Recruitment beside its department dimension. Node lineage tags are preserved. Measures_HR is visually separate. Model renames use Power BI Modeling MCP so model-side DAX dependencies and relationships update through the tabular object model. Report SourceRef.Entity, queryRef and metadata-selector fields are remapped structurally; aliases and business display labels stay readable. Existing slicers, filters, Calendar hierarchy, sort-by columns, drill-through, navigation and Department Context tooltip remain.

There are no existing calculation groups, field-parameter tables or bridge tables to migrate. Additional KPI explanation pages contain static text only, so no helper table or new DAX calculation is needed.

## Data limitations

Employee assignments are extract values, not type-2 history. Currency/FX and scheduled-work denominators are absent. Pending statuses are historical snapshot outcomes. See the source data-quality report and measure-specific caveats for coverage and exclusions.
