# Measure dictionary

120 existing DAX measures. Business logic and formats are retained; table identifiers follow the documented rename map. Every expression includes code comments and every measure has separate Description metadata.

Definitions below describe the actual model. Monetary values have unspecified source units; attendance uses recorded employee-days; recruitment uses application cohorts; employee assignments are current extract values. Reporting coverage is inferred from payroll month, and observations remain historical.

## Inventory

| Measure | Folder | Format | Existing report use |
|---|---|---|---|
| Data Through Date | 00 Context | `dd MMM yyyy` | Model library; not directly bound to an existing visual |
| Period Start Date | 00 Context | `dd MMM yyyy` | Model library; not directly bound to an existing visual |
| Period End Date | 00 Context | `dd MMM yyyy` | Model library; not directly bound to an existing visual |
| Selected Period Label | 00 Context | `@` | Attendance & Workforce Utilization, Attrition & Retention, Department Deep Dive, Executive Command Center, HR Operations & Exceptions, Payroll & Compensation, Performance Intelligence, Recruitment & Hiring Intelligence, Training & Development, Workforce Intelligence |
| Total Employees | 01 Workforce | `#,##0` | Workforce Intelligence |
| Active Headcount As Of Date | 01 Workforce | `#,##0` | Department Context, Department Deep Dive, Executive Command Center, Workforce Intelligence |
| Opening Headcount | 01 Workforce | `#,##0` | Model library; not directly bound to an existing visual |
| Closing Headcount | 01 Workforce | `#,##0` | Model library; not directly bound to an existing visual |
| New Hires | 01 Workforce | `#,##0` | Executive Command Center, Workforce Intelligence |
| Employee Exits | 01 Workforce | `#,##0` | Attrition & Retention, Executive Command Center, Workforce Intelligence |
| Average Daily Headcount | 01 Workforce | `#,##0.0` | Attrition & Retention |
| Net Workforce Change | 01 Workforce | `#,##0` | Workforce Intelligence |
| Headcount Rollforward Residual | 09 Validation | `#,##0` | Model library; not directly bound to an existing visual |
| Attrition Rate | 02 Retention | `0.0%` | Attrition & Retention, Department Context, Department Deep Dive, Executive Command Center |
| Opening Cohort Survivors | 02 Retention | `#,##0` | Model library; not directly bound to an existing visual |
| Retention Rate | 02 Retention | `0.0%` | Attrition & Retention |
| Voluntary Exits | 02 Retention | `#,##0` | Attrition & Retention |
| Voluntary Attrition Rate | 02 Retention | `0.0%` | Model library; not directly bound to an existing visual |
| Involuntary Exits | 02 Retention | `#,##0` | Model library; not directly bound to an existing visual |
| Average Exit Tenure Years | 02 Retention | `0.0` | Attrition & Retention |
| Average Active Tenure Years | 01 Workforce | `0.0` | Workforce Intelligence |
| Female Headcount | 01 Workforce | `#,##0` | Model library; not directly bound to an existing visual |
| Female Workforce Share | 01 Workforce | `0.0%` | Model library; not directly bound to an existing visual |
| Department Headcount Share | 01 Workforce | `0.0%` | Model library; not directly bound to an existing visual |
| Department Headcount Rank | 01 Workforce | `#,##0` | Department Deep Dive |
| Average Annual Salary | 01 Workforce | `#,##0` | Model library; not directly bound to an existing visual |
| Attendance Records | 03 Attendance | `#,##0` | Attendance & Workforce Utilization |
| Present Records | 03 Attendance | `#,##0` | Model library; not directly bound to an existing visual |
| Late Records | 03 Attendance | `#,##0` | Model library; not directly bound to an existing visual |
| Half Day Records | 03 Attendance | `#,##0` | Model library; not directly bound to an existing visual |
| Absent Records | 03 Attendance | `#,##0` | Model library; not directly bound to an existing visual |
| Leave Attendance Records | 03 Attendance | `#,##0` | Model library; not directly bound to an existing visual |
| Recorded Attendance Rate | 03 Attendance | `0.0%` | Attendance & Workforce Utilization, Executive Command Center |
| Recorded Absence Rate | 03 Attendance | `0.0%` | Attendance & Workforce Utilization, Department Context, Department Deep Dive |
| Recorded Late Rate | 03 Attendance | `0.0%` | Model library; not directly bound to an existing visual |
| Working Hours | 03 Attendance | `#,##0.0` | Model library; not directly bound to an existing visual |
| Overtime Hours | 03 Attendance | `#,##0.0` | Attendance & Workforce Utilization, Department Deep Dive |
| Average Working Hours | 03 Attendance | `0.0` | Attendance & Workforce Utilization |
| Overtime Share of Working Hours | 03 Attendance | `0.0%` | Model library; not directly bound to an existing visual |
| Attendance Employees | 03 Attendance | `#,##0` | Model library; not directly bound to an existing visual |
| Attendance Exceptions | 08 Operations | `#,##0` | Model library; not directly bound to an existing visual |
| Last Attendance Date | 00 Context | `dd MMM yyyy` | Model library; not directly bound to an existing visual |
| Payroll Records | 04 Payroll | `#,##0` | Model library; not directly bound to an existing visual |
| Basic Payroll | 04 Payroll | `#,##0.00` | Payroll & Compensation |
| Payroll Allowances | 04 Payroll | `#,##0.00` | Payroll & Compensation |
| Payroll Bonuses | 04 Payroll | `#,##0.00` | Payroll & Compensation |
| Payroll Tax | 04 Payroll | `#,##0.00` | Payroll & Compensation |
| Payroll Deductions | 04 Payroll | `#,##0.00` | Payroll & Compensation |
| Net Payroll | 04 Payroll | `#,##0.00` | Payroll & Compensation |
| Gross Payroll | 04 Payroll | `#,##0.00` | Department Context, Department Deep Dive, Executive Command Center, Payroll & Compensation |
| Payroll Employees | 04 Payroll | `#,##0` | Payroll & Compensation |
| Payroll Employee Months | 04 Payroll | `#,##0` | Model library; not directly bound to an existing visual |
| Gross Payroll per Employee Month | 04 Payroll | `#,##0.00` | Payroll & Compensation |
| Net Payroll per Employee Month | 04 Payroll | `#,##0.00` | Model library; not directly bound to an existing visual |
| Payroll Withholding Rate | 04 Payroll | `0.0%` | Model library; not directly bound to an existing visual |
| Payroll Reconciliation Difference | 09 Validation | `#,##0.00` | Model library; not directly bound to an existing visual |
| Net Payroll by Payment Date | 04 Payroll | `#,##0.00` | Model library; not directly bound to an existing visual |
| Department Gross Payroll Share | 04 Payroll | `0.0%` | Model library; not directly bound to an existing visual |
| Applications | 05 Recruitment | `#,##0` | Recruitment & Hiring Intelligence |
| Successful Hires | 05 Recruitment | `#,##0` | Recruitment & Hiring Intelligence |
| Rejected Applications | 05 Recruitment | `#,##0` | Model library; not directly bound to an existing visual |
| On Hold Applications | 05 Recruitment | `#,##0` | HR Operations & Exceptions, Recruitment & Hiring Intelligence |
| Withdrawn Applications | 05 Recruitment | `#,##0` | Model library; not directly bound to an existing visual |
| Hiring Conversion Rate | 05 Recruitment | `0.0%` | Recruitment & Hiring Intelligence |
| On Hold Rate | 05 Recruitment | `0.0%` | Model library; not directly bound to an existing visual |
| Joined Hired Applications | 05 Recruitment | `#,##0` | Model library; not directly bound to an existing visual |
| Hired Missing Joining Date | 08 Operations | `#,##0` | HR Operations & Exceptions, Recruitment & Hiring Intelligence |
| Average Application to Join Days | 05 Recruitment | `0.0` | Model library; not directly bound to an existing visual |
| Average Application to Interview Days | 05 Recruitment | `0.0` | Model library; not directly bound to an existing visual |
| Average Interview Score | 05 Recruitment | `0.0` | Model library; not directly bound to an existing visual |
| Join Events | 05 Recruitment | `#,##0` | Model library; not directly bound to an existing visual |
| Interview Events | 05 Recruitment | `#,##0` | Model library; not directly bound to an existing visual |
| Performance Reviews | 06 Performance | `#,##0` | Performance Intelligence |
| Reviewed Employees | 06 Performance | `#,##0` | Performance Intelligence |
| Average Performance Score | 06 Performance | `0.0` | Department Context, Department Deep Dive, Performance Intelligence |
| Average KPI Score | 06 Performance | `0.0` | Performance Intelligence |
| Average Productivity Score | 06 Performance | `0.0` | Performance Intelligence |
| Average Attendance Score | 06 Performance | `0.0` | Performance Intelligence |
| Average Teamwork Score | 06 Performance | `0.0` | Performance Intelligence |
| High Performer Reviews | 06 Performance | `#,##0` | Model library; not directly bound to an existing visual |
| High Performer Share | 06 Performance | `0.0%` | Performance Intelligence |
| Promotion Recommended Reviews | 06 Performance | `#,##0` | Performance Intelligence |
| Promotion Recommendation Rate | 06 Performance | `0.0%` | Model library; not directly bound to an existing visual |
| Self Reviews | 08 Operations | `#,##0` | HR Operations & Exceptions |
| Self Review Share | 06 Performance | `0.0%` | Model library; not directly bound to an existing visual |
| Training Enrollments | 07 Learning | `#,##0` | Training & Development |
| Training Participants | 07 Learning | `#,##0` | Training & Development |
| Training Cost | 07 Learning | `#,##0.00` | Department Context, Department Deep Dive, Training & Development |
| Training Cost per Participant | 07 Learning | `#,##0.00` | Department Deep Dive, Training & Development |
| Training Cost per Enrollment | 07 Learning | `#,##0.00` | Model library; not directly bound to an existing visual |
| Completed Training Enrollments | 07 Learning | `#,##0` | Model library; not directly bound to an existing visual |
| Training Completion Rate | 07 Learning | `0.0%` | Training & Development |
| Average Training Days | 07 Learning | `0.0` | Model library; not directly bound to an existing visual |
| Training End Events | 07 Learning | `#,##0` | Model library; not directly bound to an existing visual |
| Leave Requests | 08 Operations | `#,##0` | HR Operations & Exceptions |
| Requested Leave Days | 08 Operations | `#,##0` | Model library; not directly bound to an existing visual |
| Pending Leave Requests | 08 Operations | `#,##0` | HR Operations & Exceptions |
| Approved Leave Requests | 08 Operations | `#,##0` | Model library; not directly bound to an existing visual |
| Rejected Leave Requests | 08 Operations | `#,##0` | Model library; not directly bound to an existing visual |
| Approved Leave Days | 08 Operations | `#,##0` | Model library; not directly bound to an existing visual |
| Pending Requested Days | 08 Operations | `#,##0` | HR Operations & Exceptions |
| Leave Approval Rate | 08 Operations | `0.0%` | Model library; not directly bound to an existing visual |
| Leave End Events | 08 Operations | `#,##0` | Model library; not directly bound to an existing visual |
| New Hires Prior Equivalent Period | 01 Workforce | `#,##0` | Model library; not directly bound to an existing visual |
| New Hires YoY Change | 01 Workforce | `0.0%` | Model library; not directly bound to an existing visual |
| Employee Exits Prior Equivalent Period | 02 Retention | `#,##0` | Model library; not directly bound to an existing visual |
| Employee Exits YoY Change | 02 Retention | `0.0%` | Model library; not directly bound to an existing visual |
| Gross Payroll Prior Equivalent Period | 04 Payroll | `#,##0.00` | Model library; not directly bound to an existing visual |
| Gross Payroll YoY Change | 04 Payroll | `0.0%` | Executive Command Center |
| Applications Prior Equivalent Period | 05 Recruitment | `#,##0` | Model library; not directly bound to an existing visual |
| Applications YoY Change | 05 Recruitment | `0.0%` | Model library; not directly bound to an existing visual |
| Gross Payroll Previous Month | 04 Payroll | `#,##0.00` | Model library; not directly bound to an existing visual |
| Gross Payroll Latest Month | 04 Payroll | `#,##0.00` | Model library; not directly bound to an existing visual |
| Gross Payroll MoM Change | 04 Payroll | `0.0%` | Model library; not directly bound to an existing visual |
| Gross Payroll Rolling 12 Months | 04 Payroll | `#,##0.00` | Model library; not directly bound to an existing visual |
| Dynamic Workforce Title | 00 Context | `@` | Model library; not directly bound to an existing visual |
| Dynamic Payroll Title | 00 Context | `@` | Model library; not directly bound to an existing visual |
| Total Hours Worked | 03 Attendance | `#,##0.0` | Model library; not directly bound to an existing visual |
| Average Total Hours Worked | 03 Attendance | `0.0` | Model library; not directly bound to an existing visual |
| Overtime Share of Total Hours | 03 Attendance | `0.0%` | Model library; not directly bound to an existing visual |

## Data Through Date

Latest recorded payroll month end used as the reporting-cutoff proxy.

**Why this calculation:** A common endpoint prevents lifecycle views from drifting beyond the latest payroll month.
**Calculation formula:** Global maximum Payroll Period, advanced to its month end; REMOVEFILTERS clears all report filters.
**DAX logic:** A common endpoint prevents lifecycle views from drifting beyond the latest payroll month. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Calendar date, displayed dd MMM yyyy. · `dd MMM yyyy`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Global extract context; REMOVEFILTERS ignores Date, Department and all other report filters.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Read as the chosen cutoff proxy, not proof that every HR domain or the payroll month is complete.
**Limitations/exclusions:** Not today, a refresh timestamp, or an independent completeness check; attendance may stop earlier.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Latest recorded payroll month end used as the reporting-cutoff proxy.
// Why: A common endpoint prevents lifecycle views from drifting beyond the latest payroll month.
// Logic: Global maximum Payroll Period, advanced to its month end; REMOVEFILTERS clears all report filters.
// Context: Global extract context; REMOVEFILTERS ignores Date, Department and all other report filters.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Calendar date, displayed dd MMM yyyy.
// Caveat: Not today, a refresh timestamp, or an independent completeness check; attendance may stop earlier.
EOMONTH(CALCULATE(MAX('Fact_Payroll'[Payroll Period]), REMOVEFILTERS()),0)
```

**Model Description:** Latest recorded payroll month end used as the reporting-cutoff proxy. Calculation: Global maximum Payroll Period, advanced to its month end; REMOVEFILTERS clears all report filters. Purpose: A common endpoint prevents lifecycle views from drifting beyond the latest payroll month. Unit: Calendar date, displayed dd MMM yyyy. Date/filter context: Global extract context; REMOVEFILTERS ignores Date, Department and all other report filters. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Not today, a refresh timestamp, or an independent completeness check; attendance may stop earlier. Interpretation: Read as the chosen cutoff proxy, not proof that every HR domain or the payroll month is complete.

## Period Start Date

First calendar date remaining in the selected date context.

**Why this calculation:** A single start date defines the lifecycle and equivalent-period windows.
**Calculation formula:** Minimum Dim_Date[Date].
**DAX logic:** A single start date defines the lifecycle and equivalent-period windows. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Calendar date, displayed dd MMM yyyy. · `dd MMM yyyy`
**Source model tables:** `Dim_Date`.
**Filter/date behavior:** Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Use with Period End Date to read the effective analysis interval.
**Limitations/exclusions:** Uses the selected minimum; disjoint selections are treated as one min/max interval by lifecycle measures.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// First calendar date remaining in the selected date context.
// Why: A single start date defines the lifecycle and equivalent-period windows.
// Logic: Minimum Dim_Date[Date].
// Context: Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Calendar date, displayed dd MMM yyyy.
// Caveat: Uses the selected minimum; disjoint selections are treated as one min/max interval by lifecycle measures.
MIN('Dim_Date'[Date])
```

**Model Description:** First calendar date remaining in the selected date context. Calculation: Minimum Dim_Date[Date]. Purpose: A single start date defines the lifecycle and equivalent-period windows. Unit: Calendar date, displayed dd MMM yyyy. Date/filter context: Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Uses the selected minimum; disjoint selections are treated as one min/max interval by lifecycle measures. Interpretation: Use with Period End Date to read the effective analysis interval.

## Period End Date

Last selected calendar date, capped at payroll coverage.

**Why this calculation:** Prevents a partial source year from being presented as a complete lifecycle year.
**Calculation formula:** The smaller of maximum selected Dim_Date[Date] and Data Through Date.
**DAX logic:** Prevents a partial source year from being presented as a complete lifecycle year. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Calendar date, displayed dd MMM yyyy. · `dd MMM yyyy`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** The effective snapshot endpoint can be earlier than the selected calendar end.
**Limitations/exclusions:** Base transaction totals follow their own date roles. With an empty Date context, MIN can coerce BLANK to date-origin zero; no new empty-context guard is added.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Last selected calendar date, capped at payroll coverage.
// Why: Prevents a partial source year from being presented as a complete lifecycle year.
// Logic: The smaller of maximum selected Dim_Date[Date] and Data Through Date.
// Context: Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Calendar date, displayed dd MMM yyyy.
// Caveat: Base transaction totals follow their own date roles. With an empty Date context, MIN can coerce BLANK to date-origin zero; no new empty-context guard is added.
MIN(MAX('Dim_Date'[Date]),[Data Through Date])
```

**Model Description:** Last selected calendar date, capped at payroll coverage. Calculation: The smaller of maximum selected Dim_Date[Date] and Data Through Date. Purpose: Prevents a partial source year from being presented as a complete lifecycle year. Unit: Calendar date, displayed dd MMM yyyy. Date/filter context: Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Base transaction totals follow their own date roles. With an empty Date context, MIN can coerce BLANK to date-origin zero; no new empty-context guard is added. Interpretation: The effective snapshot endpoint can be earlier than the selected calendar end.

## Selected Period Label

Readable effective date-window caption.

**Why this calculation:** Makes the capped analysis window visible to report users.
**Calculation formula:** Formats Period Start Date and Period End Date as dd MMM yyyy and joins them using the stored separator.
**DAX logic:** Makes the capped analysis window visible to report users. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Text. · `@`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Read this alongside date slicers before comparing periods.
**Limitations/exclusions:** Text only; it does not apply a filter, validate an empty Date context, or suppress an inverted future-only caption. Stored separator is preserved exactly.
**Where used:** Attendance & Workforce Utilization, Attrition & Retention, Department Deep Dive, Executive Command Center, HR Operations & Exceptions, Payroll & Compensation, Performance Intelligence, Recruitment & Hiring Intelligence, Training & Development, Workforce Intelligence
**Existing bindings:** 10 visual projection(s), including 10 card(s).

```dax
// Readable effective date-window caption.
// Why: Makes the capped analysis window visible to report users.
// Logic: Formats Period Start Date and Period End Date as dd MMM yyyy and joins them using the stored separator.
// Context: Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Text.
// Caveat: Text only; it does not apply a filter, validate an empty Date context, or suppress an inverted future-only caption. Stored separator is preserved exactly.
FORMAT([Period Start Date],"dd MMM yyyy") & " – " & FORMAT([Period End Date],"dd MMM yyyy")
```

**Model Description:** Readable effective date-window caption. Calculation: Formats Period Start Date and Period End Date as dd MMM yyyy and joins them using the stored separator. Purpose: Makes the capped analysis window visible to report users. Unit: Text. Date/filter context: Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Text only; it does not apply a filter, validate an empty Date context, or suppress an inverted future-only caption. Stored separator is preserved exactly. Interpretation: Read this alongside date slicers before comparing periods.

## Total Employees

Employee master records matching current dimension filters, including former employees.

**Why this calculation:** Separates the size of the employee register from lifecycle-active workforce.
**Calculation formula:** Count of rows in Dim_Employee.
**DAX logic:** Separates the size of the employee register from lifecycle-active workforce. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Employee`.
**Filter/date behavior:** Department and employee attributes apply. Dim_Date does not directly filter Dim_Employee; all employment dates remain represented.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Interpretation:** A higher value means more employee spells recorded, not necessarily more current staff.
**Limitations/exclusions:** Calendar has no direct relationship to Employee, so date slicers do not reduce this master count.
**Where used:** Workforce Intelligence
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Employee master records matching current dimension filters, including former employees.
// Why: Separates the size of the employee register from lifecycle-active workforce.
// Logic: Count of rows in Dim_Employee.
// Context: Department and employee attributes apply. Dim_Date does not directly filter Dim_Employee; all employment dates remain represented.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Calendar has no direct relationship to Employee, so date slicers do not reduce this master count.
COUNTROWS('Dim_Employee')
```

**Model Description:** Employee master records matching current dimension filters, including former employees. Calculation: Count of rows in Dim_Employee. Purpose: Separates the size of the employee register from lifecycle-active workforce. Unit: Count of the population described; displayed as an integer. Date/filter context: Department and employee attributes apply. Dim_Date does not directly filter Dim_Employee; all employment dates remain represented. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Limitations: Calendar has no direct relationship to Employee, so date slicers do not reduce this master count. Interpretation: A higher value means more employee spells recorded, not necessarily more current staff.

## Active Headcount As Of Date

Employees still employed at the capped selected endpoint, including employees on leave.

**Why this calculation:** Reconstructs workforce from employment dates instead of current status labels.
**Calculation formula:** Hire Date on or before the endpoint and no Exit Date, or an Exit Date strictly after the endpoint.
**DAX logic:** Reconstructs workforce from employment dates instead of current status labels. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** Represents available employment population at that date, not FTE or recorded attendance.
**Limitations/exclusions:** Wholly future windows return BLANK; no matching employees can remain BLANK. Historical department/job transfers are unavailable.
**Where used:** Department Context, Department Deep Dive, Executive Command Center, Workforce Intelligence
**Existing bindings:** 12 visual projection(s), including 4 card(s).

```dax
// Employees still employed at the capped selected endpoint, including employees on leave.
// Why: Reconstructs workforce from employment dates instead of current status labels.
// Logic: Hire Date on or before the endpoint and no Exit Date, or an Exit Date strictly after the endpoint.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Wholly future windows return BLANK; no matching employees can remain BLANK. Historical department/job transfers are unavailable.
VAR _d=[Period End Date] RETURN IF([Period Start Date]>[Data Through Date],BLANK(),COUNTROWS(FILTER('Dim_Employee','Dim_Employee'[Hire Date]<=_d && (ISBLANK('Dim_Employee'[Exit Date]) || 'Dim_Employee'[Exit Date]>_d))))
```

**Model Description:** Employees still employed at the capped selected endpoint, including employees on leave. Calculation: Hire Date on or before the endpoint and no Exit Date, or an Exit Date strictly after the endpoint. Purpose: Reconstructs workforce from employment dates instead of current status labels. Unit: Count of the population described; displayed as an integer. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Wholly future windows return BLANK; no matching employees can remain BLANK. Historical department/job transfers are unavailable. Interpretation: Represents available employment population at that date, not FTE or recorded attendance.

## Opening Headcount

Employees employed on the day before the selected interval begins.

**Why this calculation:** Provides the opening population for rollforward and retention.
**Calculation formula:** Hire Date on or before the day before Period Start Date and no Exit Date, or an Exit Date strictly after the day before Period Start Date.
**DAX logic:** Provides the opening population for rollforward and retention. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** Compare with Closing Headcount and movement within the interval.
**Limitations/exclusions:** Wholly future windows return BLANK; empty COUNTROWS remains BLANK rather than forced zero.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Employees employed on the day before the selected interval begins.
// Why: Provides the opening population for rollforward and retention.
// Logic: Hire Date on or before the day before Period Start Date and no Exit Date, or an Exit Date strictly after the day before Period Start Date.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Wholly future windows return BLANK; empty COUNTROWS remains BLANK rather than forced zero.
VAR _d=[Period Start Date]-1 RETURN IF([Period Start Date]>[Data Through Date],BLANK(),COUNTROWS(FILTER('Dim_Employee','Dim_Employee'[Hire Date]<=_d && (ISBLANK('Dim_Employee'[Exit Date]) || 'Dim_Employee'[Exit Date]>_d))))
```

**Model Description:** Employees employed on the day before the selected interval begins. Calculation: Hire Date on or before the day before Period Start Date and no Exit Date, or an Exit Date strictly after the day before Period Start Date. Purpose: Provides the opening population for rollforward and retention. Unit: Count of the population described; displayed as an integer. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Wholly future windows return BLANK; empty COUNTROWS remains BLANK rather than forced zero. Interpretation: Compare with Closing Headcount and movement within the interval.

## Closing Headcount

Employees employed at the capped selected interval end.

**Why this calculation:** Provides an explicit closing balance for workforce rollforward.
**Calculation formula:** Hire Date on or before the endpoint and no Exit Date, or an Exit Date strictly after the endpoint. COALESCE converts an empty valid population to zero.
**DAX logic:** Provides an explicit closing balance for workforce rollforward. COALESCE explicitly substitutes zero only where present in the expression. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** COALESCE explicitly substitutes zero only where present in the expression. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** Opening plus hires minus exits should reconcile to this balance.
**Limitations/exclusions:** Wholly future windows return BLANK; current employee classifications are used for historical segmentation.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Employees employed at the capped selected interval end.
// Why: Provides an explicit closing balance for workforce rollforward.
// Logic: Hire Date on or before the endpoint and no Exit Date, or an Exit Date strictly after the endpoint. COALESCE converts an empty valid population to zero.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: COALESCE explicitly substitutes zero only where present in the expression. Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Wholly future windows return BLANK; current employee classifications are used for historical segmentation.
VAR _d=[Period End Date] RETURN IF([Period Start Date]>[Data Through Date],BLANK(),COALESCE(COUNTROWS(FILTER('Dim_Employee','Dim_Employee'[Hire Date]<=_d && (ISBLANK('Dim_Employee'[Exit Date]) || 'Dim_Employee'[Exit Date]>_d))),0))
```

**Model Description:** Employees employed at the capped selected interval end. Calculation: Hire Date on or before the endpoint and no Exit Date, or an Exit Date strictly after the endpoint. COALESCE converts an empty valid population to zero. Purpose: Provides an explicit closing balance for workforce rollforward. Unit: Count of the population described; displayed as an integer. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: COALESCE explicitly substitutes zero only where present in the expression. Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Wholly future windows return BLANK; current employee classifications are used for historical segmentation. Interpretation: Opening plus hires minus exits should reconcile to this balance.

## New Hires

Employee master records whose Hire Date falls within the selected min/max interval.

**Why this calculation:** Measures employee-master starts independently of candidate application outcomes.
**Calculation formula:** Count Employee Hire Date between Period Start Date and capped Period End Date, inclusive; empty valid counts become zero.
**DAX logic:** Measures employee-master starts independently of candidate application outcomes. COALESCE explicitly substitutes zero only where present in the expression. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** COALESCE explicitly substitutes zero only where present in the expression. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** A positive value indicates recorded employee inflow; zero is a verified no-hire interval in this extract.
**Limitations/exclusions:** One supplied hire date per employee; rehire history is unavailable. Future-only windows return BLANK. Recruitment Hired outcomes are a different unlinked population.
**Where used:** Executive Command Center, Workforce Intelligence
**Existing bindings:** 4 visual projection(s), including 2 card(s).

```dax
// Employee master records whose Hire Date falls within the selected min/max interval.
// Why: Measures employee-master starts independently of candidate application outcomes.
// Logic: Count Employee Hire Date between Period Start Date and capped Period End Date, inclusive; empty valid counts become zero.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: COALESCE explicitly substitutes zero only where present in the expression. Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: One supplied hire date per employee; rehire history is unavailable. Future-only windows return BLANK. Recruitment Hired outcomes are a different unlinked population.
VAR _s=[Period Start Date] VAR _e=[Period End Date] RETURN IF(_s>_e,BLANK(),COALESCE(COUNTROWS(FILTER('Dim_Employee','Dim_Employee'[Hire Date]>=_s && 'Dim_Employee'[Hire Date]<=_e)),0))
```

**Model Description:** Employee master records whose Hire Date falls within the selected min/max interval. Calculation: Count Employee Hire Date between Period Start Date and capped Period End Date, inclusive; empty valid counts become zero. Purpose: Measures employee-master starts independently of candidate application outcomes. Unit: Count of the population described; displayed as an integer. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: COALESCE explicitly substitutes zero only where present in the expression. Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: One supplied hire date per employee; rehire history is unavailable. Future-only windows return BLANK. Recruitment Hired outcomes are a different unlinked population. Interpretation: A positive value indicates recorded employee inflow; zero is a verified no-hire interval in this extract.

## Employee Exits

Exit events dated in the selected reporting context.

**Why this calculation:** Measures workforce outflow on the actual exit date.
**Calculation formula:** Count Fact_Exit rows under its active Exit Date relationship; future-only lifecycle windows return BLANK.
**DAX logic:** Measures workforce outflow on the actual exit date. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Fact_Exit`, `Fact_Payroll`.
**Filter/date behavior:** Exit Date actively filters exit rows; Department and employee filters also apply. A future-only selected interval is suppressed using the global payroll cutoff; no payroll-period relationship filters the numerator.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** Compare with hires and opening population before interpreting turnover.
**Limitations/exclusions:** Empty COUNTROWS can be BLANK. Retirement and other exit types remain included; not only voluntary/involuntary.
**Where used:** Attrition & Retention, Executive Command Center, Workforce Intelligence
**Existing bindings:** 7 visual projection(s), including 2 card(s).

```dax
// Exit events dated in the selected reporting context.
// Why: Measures workforce outflow on the actual exit date.
// Logic: Count Fact_Exit rows under its active Exit Date relationship; future-only lifecycle windows return BLANK.
// Context: Exit Date actively filters exit rows; Department and employee filters also apply. A future-only selected interval is suppressed using the global payroll cutoff; no payroll-period relationship filters the numerator.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Empty COUNTROWS can be BLANK. Retirement and other exit types remain included; not only voluntary/involuntary.
IF([Period Start Date]>[Data Through Date],BLANK(),COUNTROWS('Fact_Exit'))
```

**Model Description:** Exit events dated in the selected reporting context. Calculation: Count Fact_Exit rows under its active Exit Date relationship; future-only lifecycle windows return BLANK. Purpose: Measures workforce outflow on the actual exit date. Unit: Count of the population described; displayed as an integer. Date/filter context: Exit Date actively filters exit rows; Department and employee filters also apply. A future-only selected interval is suppressed using the global payroll cutoff; no payroll-period relationship filters the numerator. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Empty COUNTROWS can be BLANK. Retirement and other exit types remain included; not only voluntary/involuntary. Interpretation: Compare with hires and opening population before interpreting turnover.

## Average Daily Headcount

Exact mean end-of-day lifecycle workforce across the selected contiguous interval.

**Why this calculation:** A daily exposure denominator is more defensible than averaging only the two endpoints.
**Calculation formula:** Generate every day between selected start and capped end, count employed employees each day including zero-population days, then average.
**DAX logic:** A daily exposure denominator is more defensible than averaging only the two endpoints. COALESCE explicitly substitutes zero only where present in the expression. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Employees averaged across every day in the interval. · `#,##0.0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** COALESCE explicitly substitutes zero only where present in the expression. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** Use as the population denominator for period attrition.
**Limitations/exclusions:** Includes on-leave employees; disjoint date selections are treated as their contiguous min/max span. Future-only windows return BLANK.
**Where used:** Attrition & Retention
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Exact mean end-of-day lifecycle workforce across the selected contiguous interval.
// Why: A daily exposure denominator is more defensible than averaging only the two endpoints.
// Logic: Generate every day between selected start and capped end, count employed employees each day including zero-population days, then average.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: COALESCE explicitly substitutes zero only where present in the expression. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Employees averaged across every day in the interval.
// Caveat: Includes on-leave employees; disjoint date selections are treated as their contiguous min/max span. Future-only windows return BLANK.
VAR _s=[Period Start Date] VAR _e=[Period End Date] RETURN IF(_s>_e,BLANK(),AVERAGEX(CALENDAR(_s,_e),VAR _d=[Date] RETURN COALESCE(COUNTROWS(FILTER('Dim_Employee','Dim_Employee'[Hire Date]<=_d && (ISBLANK('Dim_Employee'[Exit Date]) || 'Dim_Employee'[Exit Date]>_d))),0)))
```

**Model Description:** Exact mean end-of-day lifecycle workforce across the selected contiguous interval. Calculation: Generate every day between selected start and capped end, count employed employees each day including zero-population days, then average. Purpose: A daily exposure denominator is more defensible than averaging only the two endpoints. Unit: Employees averaged across every day in the interval. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: COALESCE explicitly substitutes zero only where present in the expression. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Includes on-leave employees; disjoint date selections are treated as their contiguous min/max span. Future-only windows return BLANK. Interpretation: Use as the population denominator for period attrition.

## Net Workforce Change

Employee inflow less employee outflow during the selected interval.

**Why this calculation:** Shows whether hiring offsets departures.
**Calculation formula:** New Hires minus Employee Exits.
**DAX logic:** Shows whether hiring offsets departures. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Exit`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Positive means workforce growth; negative means contraction, without implying either is desirable.
**Limitations/exclusions:** Uses source lifecycle events and inherits their date filters and DAX blank-to-number arithmetic.
**Where used:** Workforce Intelligence
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Employee inflow less employee outflow during the selected interval.
// Why: Shows whether hiring offsets departures.
// Logic: New Hires minus Employee Exits.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Uses source lifecycle events and inherits their date filters and DAX blank-to-number arithmetic.
[New Hires]-[Employee Exits]
```

**Model Description:** Employee inflow less employee outflow during the selected interval. Calculation: New Hires minus Employee Exits. Purpose: Shows whether hiring offsets departures. Unit: Count of the population described; displayed as an integer. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Uses source lifecycle events and inherits their date filters and DAX blank-to-number arithmetic. Interpretation: Positive means workforce growth; negative means contraction, without implying either is desirable.

## Headcount Rollforward Residual

Unexplained difference between observed closing workforce and expected workforce movement.

**Why this calculation:** A reconciliation control checks that lifecycle dates and period movements agree.
**Calculation formula:** Closing Headcount minus Opening Headcount minus New Hires plus Employee Exits.
**DAX logic:** A reconciliation control checks that lifecycle dates and period movements agree. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Exit`, `Fact_Payroll`.
**Filter/date behavior:** Opening/closing and hires use explicit lifecycle min/max windows; exits follow active Exit Date. Endpoint is capped at global payroll coverage. Department and employee classifications remain extract values.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Zero is expected for a consistent contiguous interval; investigate a nonzero result.
**Limitations/exclusions:** Disjoint dates: lifecycle windows span selected min/max while exit rows retain the selected date set. Current classifications may not reflect historical transfers; no transfer history exists.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Unexplained difference between observed closing workforce and expected workforce movement.
// Why: A reconciliation control checks that lifecycle dates and period movements agree.
// Logic: Closing Headcount minus Opening Headcount minus New Hires plus Employee Exits.
// Context: Opening/closing and hires use explicit lifecycle min/max windows; exits follow active Exit Date. Endpoint is capped at global payroll coverage. Department and employee classifications remain extract values.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Disjoint dates: lifecycle windows span selected min/max while exit rows retain the selected date set. Current classifications may not reflect historical transfers; no transfer history exists.
[Closing Headcount]-[Opening Headcount]-[New Hires]+[Employee Exits]
```

**Model Description:** Unexplained difference between observed closing workforce and expected workforce movement. Calculation: Closing Headcount minus Opening Headcount minus New Hires plus Employee Exits. Purpose: A reconciliation control checks that lifecycle dates and period movements agree. Unit: Count of the population described; displayed as an integer. Date/filter context: Opening/closing and hires use explicit lifecycle min/max windows; exits follow active Exit Date. Endpoint is capped at global payroll coverage. Department and employee classifications remain extract values. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Disjoint dates: lifecycle windows span selected min/max while exit rows retain the selected date set. Current classifications may not reflect historical transfers; no transfer history exists. Interpretation: Zero is expected for a consistent contiguous interval; investigate a nonzero result.

## Attrition Rate

Departures during the selected interval relative to average daily workforce exposure.

**Why this calculation:** Uses all exit events and a daily lifecycle population rather than total employee-master records.
**Calculation formula:** Employee Exits / Average Daily Headcount.
**DAX logic:** Uses all exit events and a daily lifecycle population rather than total employee-master records. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Exit`, `Fact_Payroll`.
**Filter/date behavior:** Numerator follows active Exit Date; denominator counts lifecycle-active employees on every day of the selected min/max interval, capped at global payroll coverage. Department and employee filters apply to both populations.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means more turnover during the selected period; this is not an annualized rate.
**Limitations/exclusions:** Zero or BLANK denominator returns BLANK. Disjoint dates: daily lifecycle denominator spans selected min/max while exit rows retain selected dates. Prefer contiguous equivalent intervals.
**Where used:** Attrition & Retention, Department Context, Department Deep Dive, Executive Command Center
**Existing bindings:** 7 visual projection(s), including 4 card(s).

```dax
// Departures during the selected interval relative to average daily workforce exposure.
// Why: Uses all exit events and a daily lifecycle population rather than total employee-master records.
// Logic: Employee Exits / Average Daily Headcount.
// Context: Numerator follows active Exit Date; denominator counts lifecycle-active employees on every day of the selected min/max interval, capped at global payroll coverage. Department and employee filters apply to both populations.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Zero or BLANK denominator returns BLANK. Disjoint dates: daily lifecycle denominator spans selected min/max while exit rows retain selected dates. Prefer contiguous equivalent intervals.
DIVIDE([Employee Exits],[Average Daily Headcount])
```

**Model Description:** Departures during the selected interval relative to average daily workforce exposure. Calculation: Employee Exits / Average Daily Headcount. Purpose: Uses all exit events and a daily lifecycle population rather than total employee-master records. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Numerator follows active Exit Date; denominator counts lifecycle-active employees on every day of the selected min/max interval, capped at global payroll coverage. Department and employee filters apply to both populations. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Zero or BLANK denominator returns BLANK. Disjoint dates: daily lifecycle denominator spans selected min/max while exit rows retain selected dates. Prefer contiguous equivalent intervals. Interpretation: Higher means more turnover during the selected period; this is not an annualized rate.

## Opening Cohort Survivors

Employees already employed before the interval who remain employed at its end.

**Why this calculation:** Excludes in-period new hires so retention follows the opening workforce cohort.
**Calculation formula:** Hire Date strictly before Period Start Date and Exit Date blank or strictly after capped Period End Date.
**DAX logic:** Excludes in-period new hires so retention follows the opening workforce cohort. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** This is the retained opening population, not all employees at closing.
**Limitations/exclusions:** Future-only windows return BLANK; empty COUNTROWS can remain BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Employees already employed before the interval who remain employed at its end.
// Why: Excludes in-period new hires so retention follows the opening workforce cohort.
// Logic: Hire Date strictly before Period Start Date and Exit Date blank or strictly after capped Period End Date.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Future-only windows return BLANK; empty COUNTROWS can remain BLANK.
VAR _s=[Period Start Date] VAR _e=[Period End Date] RETURN IF(_s>_e,BLANK(),COUNTROWS(FILTER('Dim_Employee','Dim_Employee'[Hire Date]<_s && (ISBLANK('Dim_Employee'[Exit Date]) || 'Dim_Employee'[Exit Date]>_e))))
```

**Model Description:** Employees already employed before the interval who remain employed at its end. Calculation: Hire Date strictly before Period Start Date and Exit Date blank or strictly after capped Period End Date. Purpose: Excludes in-period new hires so retention follows the opening workforce cohort. Unit: Count of the population described; displayed as an integer. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Future-only windows return BLANK; empty COUNTROWS can remain BLANK. Interpretation: This is the retained opening population, not all employees at closing.

## Retention Rate

Share of the opening workforce still employed at interval end.

**Why this calculation:** Cohort survival measures retention directly; it is not one minus period attrition.
**Calculation formula:** Opening Cohort Survivors / Opening Headcount.
**DAX logic:** Cohort survival measures retention directly; it is not one minus period attrition. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Opening cohort is employed before selected start; survivors remain employed after capped selected end. Department and employee filters apply using extract classifications. No active payroll-period relationship selects this cohort.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means more of the opening population stayed; new hires cannot inflate it.
**Limitations/exclusions:** Zero or BLANK opening headcount returns BLANK. Same extract organizational classifications apply to numerator and denominator.
**Where used:** Attrition & Retention
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Share of the opening workforce still employed at interval end.
// Why: Cohort survival measures retention directly; it is not one minus period attrition.
// Logic: Opening Cohort Survivors / Opening Headcount.
// Context: Opening cohort is employed before selected start; survivors remain employed after capped selected end. Department and employee filters apply using extract classifications. No active payroll-period relationship selects this cohort.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Zero or BLANK opening headcount returns BLANK. Same extract organizational classifications apply to numerator and denominator.
DIVIDE([Opening Cohort Survivors],[Opening Headcount])
```

**Model Description:** Share of the opening workforce still employed at interval end. Calculation: Opening Cohort Survivors / Opening Headcount. Purpose: Cohort survival measures retention directly; it is not one minus period attrition. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Opening cohort is employed before selected start; survivors remain employed after capped selected end. Department and employee filters apply using extract classifications. No active payroll-period relationship selects this cohort. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Zero or BLANK opening headcount returns BLANK. Same extract organizational classifications apply to numerator and denominator. Interpretation: Higher means more of the opening population stayed; new hires cannot inflate it.

## Voluntary Exits

Exit events classified voluntary in the source.

**Why this calculation:** Separates departure categories for targeted investigation.
**Calculation formula:** Employee Exits with KEEPFILTERS on Fact_Exit[Exit Type] = Voluntary.
**DAX logic:** Separates departure categories for targeted investigation. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Fact_Exit`, `Fact_Payroll`.
**Filter/date behavior:** Exit Date actively filters exit rows; Department and employee filters also apply. A future-only selected interval is suppressed using the global payroll cutoff; no payroll-period relationship filters the numerator.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Read alongside all exits; categories need not exhaust every exit type.
**Limitations/exclusions:** KEEPFILTERS intersects an existing exit-type filter. Other categories such as retirement are excluded from this measure.
**Where used:** Attrition & Retention
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Exit events classified voluntary in the source.
// Why: Separates departure categories for targeted investigation.
// Logic: Employee Exits with KEEPFILTERS on Fact_Exit[Exit Type] = Voluntary.
// Context: Exit Date actively filters exit rows; Department and employee filters also apply. A future-only selected interval is suppressed using the global payroll cutoff; no payroll-period relationship filters the numerator.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: KEEPFILTERS intersects an existing exit-type filter. Other categories such as retirement are excluded from this measure.
CALCULATE([Employee Exits],KEEPFILTERS('Fact_Exit'[Exit Type]="Voluntary"))
```

**Model Description:** Exit events classified voluntary in the source. Calculation: Employee Exits with KEEPFILTERS on Fact_Exit[Exit Type] = Voluntary. Purpose: Separates departure categories for targeted investigation. Unit: Count of the population described; displayed as an integer. Date/filter context: Exit Date actively filters exit rows; Department and employee filters also apply. A future-only selected interval is suppressed using the global payroll cutoff; no payroll-period relationship filters the numerator. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: KEEPFILTERS intersects an existing exit-type filter. Other categories such as retirement are excluded from this measure. Interpretation: Read alongside all exits; categories need not exhaust every exit type.

## Voluntary Attrition Rate

Voluntary departures relative to average daily workforce.

**Why this calculation:** Isolates voluntary turnover while retaining the full workforce exposure denominator.
**Calculation formula:** Voluntary Exits / Average Daily Headcount.
**DAX logic:** Isolates voluntary turnover while retaining the full workforce exposure denominator. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Exit`, `Fact_Payroll`.
**Filter/date behavior:** Numerator follows active Exit Date; denominator counts lifecycle-active employees on every day of the selected min/max interval, capped at global payroll coverage. Department and employee filters apply to both populations.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher indicates more voluntary turnover over the selected interval.
**Limitations/exclusions:** Period rate, not annualized; zero or BLANK denominator returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Voluntary departures relative to average daily workforce.
// Why: Isolates voluntary turnover while retaining the full workforce exposure denominator.
// Logic: Voluntary Exits / Average Daily Headcount.
// Context: Numerator follows active Exit Date; denominator counts lifecycle-active employees on every day of the selected min/max interval, capped at global payroll coverage. Department and employee filters apply to both populations.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Period rate, not annualized; zero or BLANK denominator returns BLANK.
DIVIDE([Voluntary Exits],[Average Daily Headcount])
```

**Model Description:** Voluntary departures relative to average daily workforce. Calculation: Voluntary Exits / Average Daily Headcount. Purpose: Isolates voluntary turnover while retaining the full workforce exposure denominator. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Numerator follows active Exit Date; denominator counts lifecycle-active employees on every day of the selected min/max interval, capped at global payroll coverage. Department and employee filters apply to both populations. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Period rate, not annualized; zero or BLANK denominator returns BLANK. Interpretation: Higher indicates more voluntary turnover over the selected interval.

## Involuntary Exits

Exit events classified involuntary in the source.

**Why this calculation:** Separates departure categories for targeted investigation.
**Calculation formula:** Employee Exits with KEEPFILTERS on Fact_Exit[Exit Type] = Involuntary.
**DAX logic:** Separates departure categories for targeted investigation. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Fact_Exit`, `Fact_Payroll`.
**Filter/date behavior:** Exit Date actively filters exit rows; Department and employee filters also apply. A future-only selected interval is suppressed using the global payroll cutoff; no payroll-period relationship filters the numerator.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Read alongside all exits; categories need not exhaust every exit type.
**Limitations/exclusions:** KEEPFILTERS intersects an existing exit-type filter. Other categories such as retirement are excluded from this measure.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Exit events classified involuntary in the source.
// Why: Separates departure categories for targeted investigation.
// Logic: Employee Exits with KEEPFILTERS on Fact_Exit[Exit Type] = Involuntary.
// Context: Exit Date actively filters exit rows; Department and employee filters also apply. A future-only selected interval is suppressed using the global payroll cutoff; no payroll-period relationship filters the numerator.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: KEEPFILTERS intersects an existing exit-type filter. Other categories such as retirement are excluded from this measure.
CALCULATE([Employee Exits],KEEPFILTERS('Fact_Exit'[Exit Type]="Involuntary"))
```

**Model Description:** Exit events classified involuntary in the source. Calculation: Employee Exits with KEEPFILTERS on Fact_Exit[Exit Type] = Involuntary. Purpose: Separates departure categories for targeted investigation. Unit: Count of the population described; displayed as an integer. Date/filter context: Exit Date actively filters exit rows; Department and employee filters also apply. A future-only selected interval is suppressed using the global payroll cutoff; no payroll-period relationship filters the numerator. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: KEEPFILTERS intersects an existing exit-type filter. Other categories such as retirement are excluded from this measure. Interpretation: Read alongside all exits; categories need not exhaust every exit type.

## Average Exit Tenure Years

Mean completed employment tenure among selected exit events.

**Why this calculation:** Uses the linked hire date to describe when selected employees leave in their employment lifecycle.
**Calculation formula:** For each Exit row, days from related Employee Hire Date to Exit Date / 365.25, averaged over exit rows.
**DAX logic:** Uses the linked hire date to describe when selected employees leave in their employment lifecycle. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Years, using elapsed days / 365.25. · `0.0`
**Source model tables:** `Dim_Employee`, `Fact_Exit`.
**Filter/date behavior:** Active Exit Date selects exit events; related Employee Hire Date supplies tenure start. Department and employee filters apply. This measure has no explicit payroll coverage cap.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Shorter tenure can indicate early attrition; it does not by itself establish its cause.
**Limitations/exclusions:** Exit Date filters events; employee/department filters also apply. Years use a 365.25-day convention.
**Where used:** Attrition & Retention
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Mean completed employment tenure among selected exit events.
// Why: Uses the linked hire date to describe when selected employees leave in their employment lifecycle.
// Logic: For each Exit row, days from related Employee Hire Date to Exit Date / 365.25, averaged over exit rows.
// Context: Active Exit Date selects exit events; related Employee Hire Date supplies tenure start. Department and employee filters apply. This measure has no explicit payroll coverage cap.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Years, using elapsed days / 365.25.
// Caveat: Exit Date filters events; employee/department filters also apply. Years use a 365.25-day convention.
AVERAGEX('Fact_Exit',DIVIDE(DATEDIFF(RELATED('Dim_Employee'[Hire Date]),'Fact_Exit'[Exit Date],DAY),365.25))
```

**Model Description:** Mean completed employment tenure among selected exit events. Calculation: For each Exit row, days from related Employee Hire Date to Exit Date / 365.25, averaged over exit rows. Purpose: Uses the linked hire date to describe when selected employees leave in their employment lifecycle. Unit: Years, using elapsed days / 365.25. Date/filter context: Active Exit Date selects exit events; related Employee Hire Date supplies tenure start. Department and employee filters apply. This measure has no explicit payroll coverage cap. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: Exit Date filters events; employee/department filters also apply. Years use a 365.25-day convention. Interpretation: Shorter tenure can indicate early attrition; it does not by itself establish its cause.

## Average Active Tenure Years

Mean employment tenure of employees active at the selected endpoint.

**Why this calculation:** Calculates tenure at the requested endpoint instead of using the fixed extract Tenure Band.
**Calculation formula:** Filter employees by lifecycle-active dates; average days from Hire Date to endpoint / 365.25.
**DAX logic:** Calculates tenure at the requested endpoint instead of using the fixed extract Tenure Band. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Years, using elapsed days / 365.25. · `0.0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Describes experience in the active cohort; a larger value is not automatically better.
**Limitations/exclusions:** No explicit future-only guard in this expression: it uses the capped endpoint even if selected start is later. Preserve this existing behavior.
**Where used:** Workforce Intelligence
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Mean employment tenure of employees active at the selected endpoint.
// Why: Calculates tenure at the requested endpoint instead of using the fixed extract Tenure Band.
// Logic: Filter employees by lifecycle-active dates; average days from Hire Date to endpoint / 365.25.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Years, using elapsed days / 365.25.
// Caveat: No explicit future-only guard in this expression: it uses the capped endpoint even if selected start is later. Preserve this existing behavior.
VAR _d=[Period End Date] RETURN AVERAGEX(FILTER('Dim_Employee','Dim_Employee'[Hire Date]<=_d && (ISBLANK('Dim_Employee'[Exit Date]) || 'Dim_Employee'[Exit Date]>_d)),DIVIDE(DATEDIFF('Dim_Employee'[Hire Date],_d,DAY),365.25))
```

**Model Description:** Mean employment tenure of employees active at the selected endpoint. Calculation: Filter employees by lifecycle-active dates; average days from Hire Date to endpoint / 365.25. Purpose: Calculates tenure at the requested endpoint instead of using the fixed extract Tenure Band. Unit: Years, using elapsed days / 365.25. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: No explicit future-only guard in this expression: it uses the capped endpoint even if selected start is later. Preserve this existing behavior. Interpretation: Describes experience in the active cohort; a larger value is not automatically better.

## Female Headcount

Lifecycle-active employees whose source Gender is Female.

**Why this calculation:** Supports workforce composition analysis without changing lifecycle eligibility.
**Calculation formula:** Active Headcount As Of Date with KEEPFILTERS Gender = Female.
**DAX logic:** Supports workforce composition analysis without changing lifecycle eligibility. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Count of employees in the source Female category at the selected endpoint.
**Limitations/exclusions:** KEEPFILTERS intersects the current Gender filter; source categories and extract classifications are preserved.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Lifecycle-active employees whose source Gender is Female.
// Why: Supports workforce composition analysis without changing lifecycle eligibility.
// Logic: Active Headcount As Of Date with KEEPFILTERS Gender = Female.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: KEEPFILTERS intersects the current Gender filter; source categories and extract classifications are preserved.
CALCULATE([Active Headcount As Of Date],KEEPFILTERS('Dim_Employee'[Gender]="Female"))
```

**Model Description:** Lifecycle-active employees whose source Gender is Female. Calculation: Active Headcount As Of Date with KEEPFILTERS Gender = Female. Purpose: Supports workforce composition analysis without changing lifecycle eligibility. Unit: Count of the population described; displayed as an integer. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: KEEPFILTERS intersects the current Gender filter; source categories and extract classifications are preserved. Interpretation: Count of employees in the source Female category at the selected endpoint.

## Female Workforce Share

Share of the selected active workforce in the source Female category.

**Why this calculation:** Normalizes composition for the size of the filtered population.
**Calculation formula:** Female Headcount / Active Headcount As Of Date.
**DAX logic:** Normalizes composition for the size of the filtered population. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Read as population composition, not a performance score or inferred gender identity.
**Limitations/exclusions:** An existing Gender slicer also filters the denominator; selecting Female alone therefore yields 100% when nonempty. Zero denominator returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Share of the selected active workforce in the source Female category.
// Why: Normalizes composition for the size of the filtered population.
// Logic: Female Headcount / Active Headcount As Of Date.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: An existing Gender slicer also filters the denominator; selecting Female alone therefore yields 100% when nonempty. Zero denominator returns BLANK.
DIVIDE([Female Headcount],[Active Headcount As Of Date])
```

**Model Description:** Share of the selected active workforce in the source Female category. Calculation: Female Headcount / Active Headcount As Of Date. Purpose: Normalizes composition for the size of the filtered population. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: An existing Gender slicer also filters the denominator; selecting Female alone therefore yields 100% when nonempty. Zero denominator returns BLANK. Interpretation: Read as population composition, not a performance score or inferred gender identity.

## Department Headcount Share

Active headcount share after removing the explicit department table and employee department-name filters.

**Why this calculation:** Shows relative departmental workforce scale while preserving other employee selections.
**Calculation formula:** Active Headcount / Active Headcount recalculated without Dim_Department filters and without Dim_Employee[Department] filters.
**DAX logic:** Shows relative departmental workforce scale while preserving other employee selections. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Date`, `Dim_Department`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** A larger value means a larger share of the otherwise selected workforce.
**Limitations/exclusions:** Other Employee attributes, including any separate employee department-key filter, remain. Denominator is not ALLSELECTED departments; zero denominator returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Active headcount share after removing the explicit department table and employee department-name filters.
// Why: Shows relative departmental workforce scale while preserving other employee selections.
// Logic: Active Headcount / Active Headcount recalculated without Dim_Department filters and without Dim_Employee[Department] filters.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Other Employee attributes, including any separate employee department-key filter, remain. Denominator is not ALLSELECTED departments; zero denominator returns BLANK.
DIVIDE([Active Headcount As Of Date],CALCULATE([Active Headcount As Of Date],REMOVEFILTERS('Dim_Department'),REMOVEFILTERS('Dim_Employee'[Department])))
```

**Model Description:** Active headcount share after removing the explicit department table and employee department-name filters. Calculation: Active Headcount / Active Headcount recalculated without Dim_Department filters and without Dim_Employee[Department] filters. Purpose: Shows relative departmental workforce scale while preserving other employee selections. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Other Employee attributes, including any separate employee department-key filter, remain. Denominator is not ALLSELECTED departments; zero denominator returns BLANK. Interpretation: A larger value means a larger share of the otherwise selected workforce.

## Department Headcount Rank

Dense descending headcount rank among selected departments.

**Why this calculation:** Supports comparison within the visible department selection and avoids meaningless grand-total ranks.
**Calculation formula:** When Department is in scope, RANKX over ALLSELECTED Department using Active Headcount; otherwise BLANK.
**DAX logic:** Supports comparison within the visible department selection and avoids meaningless grand-total ranks. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Dense ordinal rank; 1 is highest headcount. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Department`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** 1 is the largest active workforce; ties share a rank.
**Limitations/exclusions:** Ranks only in a Department grouping; total/card contexts return BLANK. Current job/demographic filters remain active.
**Where used:** Department Deep Dive
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Dense descending headcount rank among selected departments.
// Why: Supports comparison within the visible department selection and avoids meaningless grand-total ranks.
// Logic: When Department is in scope, RANKX over ALLSELECTED Department using Active Headcount; otherwise BLANK.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Dense ordinal rank; 1 is highest headcount.
// Caveat: Ranks only in a Department grouping; total/card contexts return BLANK. Current job/demographic filters remain active.
IF(ISINSCOPE('Dim_Department'[Department]),RANKX(ALLSELECTED('Dim_Department'[Department]),[Active Headcount As Of Date],,DESC,Dense),BLANK())
```

**Model Description:** Dense descending headcount rank among selected departments. Calculation: When Department is in scope, RANKX over ALLSELECTED Department using Active Headcount; otherwise BLANK. Purpose: Supports comparison within the visible department selection and avoids meaningless grand-total ranks. Unit: Dense ordinal rank; 1 is highest headcount. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Ranks only in a Department grouping; total/card contexts return BLANK. Current job/demographic filters remain active. Interpretation: 1 is the largest active workforce; ties share a rank.

## Average Annual Salary

Average current extract annual salary of lifecycle-active employees at the capped endpoint.

**Why this calculation:** Uses one salary per active employee rather than transaction-weighted payroll.
**Calculation formula:** Average Employee Annual Salary across employees passing hire/exit lifecycle eligibility.
**DAX logic:** Uses one salary per active employee rather than transaction-weighted payroll. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Unspecified source monetary units. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Annual compensation level in unspecified source currency units; compare only under a consistent currency interpretation.
**Limitations/exclusions:** Historical salary changes and FX/currency policy are unavailable. Expression has no explicit future-only start guard.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Average current extract annual salary of lifecycle-active employees at the capped endpoint.
// Why: Uses one salary per active employee rather than transaction-weighted payroll.
// Logic: Average Employee Annual Salary across employees passing hire/exit lifecycle eligibility.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Unspecified source monetary units.
// Caveat: Historical salary changes and FX/currency policy are unavailable. Expression has no explicit future-only start guard.
VAR _d=[Period End Date] RETURN AVERAGEX(FILTER('Dim_Employee','Dim_Employee'[Hire Date]<=_d && (ISBLANK('Dim_Employee'[Exit Date]) || 'Dim_Employee'[Exit Date]>_d)),'Dim_Employee'[Annual Salary])
```

**Model Description:** Average current extract annual salary of lifecycle-active employees at the capped endpoint. Calculation: Average Employee Annual Salary across employees passing hire/exit lifecycle eligibility. Purpose: Uses one salary per active employee rather than transaction-weighted payroll. Unit: Unspecified source monetary units. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: Historical salary changes and FX/currency policy are unavailable. Expression has no explicit future-only start guard. Interpretation: Annual compensation level in unspecified source currency units; compare only under a consistent currency interpretation.

## Attendance Records

Recorded employee attendance days in the selected context.

**Why this calculation:** The source has one row per recorded employee-date, but no complete scheduled-work calendar.
**Calculation formula:** Count Fact_Attendance rows.
**DAX logic:** The source has one row per recorded employee-date, but no complete scheduled-work calendar. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Interpretation:** This is recorded observation coverage, not scheduled days or employees.
**Limitations/exclusions:** Attendance Date is active; unrecorded days are excluded, not inferred absent. Empty count may be BLANK.
**Where used:** Attendance & Workforce Utilization
**Existing bindings:** 3 visual projection(s), including 1 card(s).

```dax
// Recorded employee attendance days in the selected context.
// Why: The source has one row per recorded employee-date, but no complete scheduled-work calendar.
// Logic: Count Fact_Attendance rows.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Attendance Date is active; unrecorded days are excluded, not inferred absent. Empty count may be BLANK.
COUNTROWS('Fact_Attendance')
```

**Model Description:** Recorded employee attendance days in the selected context. Calculation: Count Fact_Attendance rows. Purpose: The source has one row per recorded employee-date, but no complete scheduled-work calendar. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Limitations: Attendance Date is active; unrecorded days are excluded, not inferred absent. Empty count may be BLANK. Interpretation: This is recorded observation coverage, not scheduled days or employees.

## Present Records

Recorded employee-days with attendance status Present.

**Why this calculation:** Provides mutually exclusive recorded status components for attendance analysis.
**Calculation formula:** Attendance Records filtered with KEEPFILTERS Attendance Status = Present.
**DAX logic:** Provides mutually exclusive recorded status components for attendance analysis. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Count of source observations in this status; not missing-day estimates.
**Limitations/exclusions:** Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Recorded employee-days with attendance status Present.
// Why: Provides mutually exclusive recorded status components for attendance analysis.
// Logic: Attendance Records filtered with KEEPFILTERS Attendance Status = Present.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK.
CALCULATE([Attendance Records],KEEPFILTERS('Fact_Attendance'[Attendance Status]="Present"))
```

**Model Description:** Recorded employee-days with attendance status Present. Calculation: Attendance Records filtered with KEEPFILTERS Attendance Status = Present. Purpose: Provides mutually exclusive recorded status components for attendance analysis. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK. Interpretation: Count of source observations in this status; not missing-day estimates.

## Late Records

Recorded employee-days with attendance status Late.

**Why this calculation:** Provides mutually exclusive recorded status components for attendance analysis.
**Calculation formula:** Attendance Records filtered with KEEPFILTERS Attendance Status = Late.
**DAX logic:** Provides mutually exclusive recorded status components for attendance analysis. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Count of source observations in this status; not missing-day estimates.
**Limitations/exclusions:** Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Recorded employee-days with attendance status Late.
// Why: Provides mutually exclusive recorded status components for attendance analysis.
// Logic: Attendance Records filtered with KEEPFILTERS Attendance Status = Late.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK.
CALCULATE([Attendance Records],KEEPFILTERS('Fact_Attendance'[Attendance Status]="Late"))
```

**Model Description:** Recorded employee-days with attendance status Late. Calculation: Attendance Records filtered with KEEPFILTERS Attendance Status = Late. Purpose: Provides mutually exclusive recorded status components for attendance analysis. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK. Interpretation: Count of source observations in this status; not missing-day estimates.

## Half Day Records

Recorded employee-days with attendance status Half-Day.

**Why this calculation:** Provides mutually exclusive recorded status components for attendance analysis.
**Calculation formula:** Attendance Records filtered with KEEPFILTERS Attendance Status = Half-Day.
**DAX logic:** Provides mutually exclusive recorded status components for attendance analysis. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Count of source observations in this status; not missing-day estimates.
**Limitations/exclusions:** Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Recorded employee-days with attendance status Half-Day.
// Why: Provides mutually exclusive recorded status components for attendance analysis.
// Logic: Attendance Records filtered with KEEPFILTERS Attendance Status = Half-Day.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK.
CALCULATE([Attendance Records],KEEPFILTERS('Fact_Attendance'[Attendance Status]="Half-Day"))
```

**Model Description:** Recorded employee-days with attendance status Half-Day. Calculation: Attendance Records filtered with KEEPFILTERS Attendance Status = Half-Day. Purpose: Provides mutually exclusive recorded status components for attendance analysis. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK. Interpretation: Count of source observations in this status; not missing-day estimates.

## Absent Records

Recorded employee-days with attendance status Absent.

**Why this calculation:** Provides mutually exclusive recorded status components for attendance analysis.
**Calculation formula:** Attendance Records filtered with KEEPFILTERS Attendance Status = Absent.
**DAX logic:** Provides mutually exclusive recorded status components for attendance analysis. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Count of source observations in this status; not missing-day estimates.
**Limitations/exclusions:** Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Recorded employee-days with attendance status Absent.
// Why: Provides mutually exclusive recorded status components for attendance analysis.
// Logic: Attendance Records filtered with KEEPFILTERS Attendance Status = Absent.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK.
CALCULATE([Attendance Records],KEEPFILTERS('Fact_Attendance'[Attendance Status]="Absent"))
```

**Model Description:** Recorded employee-days with attendance status Absent. Calculation: Attendance Records filtered with KEEPFILTERS Attendance Status = Absent. Purpose: Provides mutually exclusive recorded status components for attendance analysis. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK. Interpretation: Count of source observations in this status; not missing-day estimates.

## Leave Attendance Records

Recorded employee-days with attendance status Leave.

**Why this calculation:** Provides mutually exclusive recorded status components for attendance analysis.
**Calculation formula:** Attendance Records filtered with KEEPFILTERS Attendance Status = Leave.
**DAX logic:** Provides mutually exclusive recorded status components for attendance analysis. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Count of source observations in this status; not missing-day estimates.
**Limitations/exclusions:** Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Recorded employee-days with attendance status Leave.
// Why: Provides mutually exclusive recorded status components for attendance analysis.
// Logic: Attendance Records filtered with KEEPFILTERS Attendance Status = Leave.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK.
CALCULATE([Attendance Records],KEEPFILTERS('Fact_Attendance'[Attendance Status]="Leave"))
```

**Model Description:** Recorded employee-days with attendance status Leave. Calculation: Attendance Records filtered with KEEPFILTERS Attendance Status = Leave. Purpose: Provides mutually exclusive recorded status components for attendance analysis. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Existing status filters are intersected. Half-Day is a status count, not a half-weighted FTE day; empty counts may be BLANK. Interpretation: Count of source observations in this status; not missing-day estimates.

## Recorded Attendance Rate

Share of recorded employee-days showing presence, lateness or half-day attendance.

**Why this calculation:** Uses only observable records rather than assuming a schedule.
**Calculation formula:** (Present Records + Late Records + Half Day Records) / Attendance Records.
**DAX logic:** Uses only observable records rather than assuming a schedule. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means a larger observed presence share; assess late and half-day components separately.
**Limitations/exclusions:** Half-Day counts as one presence record. Leave and Absent remain in denominator. Not scheduled attendance or FTE-weighted attendance; zero denominator returns BLANK.
**Where used:** Attendance & Workforce Utilization, Executive Command Center
**Existing bindings:** 2 visual projection(s), including 1 card(s).

```dax
// Share of recorded employee-days showing presence, lateness or half-day attendance.
// Why: Uses only observable records rather than assuming a schedule.
// Logic: (Present Records + Late Records + Half Day Records) / Attendance Records.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Half-Day counts as one presence record. Leave and Absent remain in denominator. Not scheduled attendance or FTE-weighted attendance; zero denominator returns BLANK.
DIVIDE([Present Records]+[Late Records]+[Half Day Records],[Attendance Records])
```

**Model Description:** Share of recorded employee-days showing presence, lateness or half-day attendance. Calculation: (Present Records + Late Records + Half Day Records) / Attendance Records. Purpose: Uses only observable records rather than assuming a schedule. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Half-Day counts as one presence record. Leave and Absent remain in denominator. Not scheduled attendance or FTE-weighted attendance; zero denominator returns BLANK. Interpretation: Higher means a larger observed presence share; assess late and half-day components separately.

## Recorded Absence Rate

Share of recorded employee-days explicitly marked Absent.

**Why this calculation:** Separates explicit absence from leave and unrecorded dates.
**Calculation formula:** Absent Records / Attendance Records.
**DAX logic:** Separates explicit absence from leave and unrecorded dates. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means more observed absence within the recorded population.
**Limitations/exclusions:** Does not infer absence on missing dates; zero or BLANK denominator returns BLANK.
**Where used:** Attendance & Workforce Utilization, Department Context, Department Deep Dive
**Existing bindings:** 5 visual projection(s), including 2 card(s).

```dax
// Share of recorded employee-days explicitly marked Absent.
// Why: Separates explicit absence from leave and unrecorded dates.
// Logic: Absent Records / Attendance Records.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Does not infer absence on missing dates; zero or BLANK denominator returns BLANK.
DIVIDE([Absent Records],[Attendance Records])
```

**Model Description:** Share of recorded employee-days explicitly marked Absent. Calculation: Absent Records / Attendance Records. Purpose: Separates explicit absence from leave and unrecorded dates. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Does not infer absence on missing dates; zero or BLANK denominator returns BLANK. Interpretation: Higher means more observed absence within the recorded population.

## Recorded Late Rate

Share of recorded employee-days explicitly marked Late.

**Why this calculation:** Quantifies observed lateness using a compatible recorded-day denominator.
**Calculation formula:** Late Records / Attendance Records.
**DAX logic:** Quantifies observed lateness using a compatible recorded-day denominator. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means more late observations, not an SLA or total minutes late.
**Limitations/exclusions:** No threshold or late-minute timestamp is modeled. Zero or BLANK denominator returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Share of recorded employee-days explicitly marked Late.
// Why: Quantifies observed lateness using a compatible recorded-day denominator.
// Logic: Late Records / Attendance Records.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: No threshold or late-minute timestamp is modeled. Zero or BLANK denominator returns BLANK.
DIVIDE([Late Records],[Attendance Records])
```

**Model Description:** Share of recorded employee-days explicitly marked Late. Calculation: Late Records / Attendance Records. Purpose: Quantifies observed lateness using a compatible recorded-day denominator. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: No threshold or late-minute timestamp is modeled. Zero or BLANK denominator returns BLANK. Interpretation: Higher means more late observations, not an SLA or total minutes late.

## Working Hours

Reported regular working hours, excluding overtime.

**Why this calculation:** Source clock reconciliation confirms regular and overtime hours are separate components.
**Calculation formula:** Sum Fact_Attendance[Working Hours].
**DAX logic:** Source clock reconciliation confirms regular and overtime hours are separate components. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Hours. · `#,##0.0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Recorded regular labor time, not scheduled capacity or total worked time.
**Limitations/exclusions:** Includes only recorded rows; combine with Overtime Hours for total time. Empty SUM returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Reported regular working hours, excluding overtime.
// Why: Source clock reconciliation confirms regular and overtime hours are separate components.
// Logic: Sum Fact_Attendance[Working Hours].
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Hours.
// Caveat: Includes only recorded rows; combine with Overtime Hours for total time. Empty SUM returns BLANK.
SUM('Fact_Attendance'[Working Hours])
```

**Model Description:** Reported regular working hours, excluding overtime. Calculation: Sum Fact_Attendance[Working Hours]. Purpose: Source clock reconciliation confirms regular and overtime hours are separate components. Unit: Hours. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: Includes only recorded rows; combine with Overtime Hours for total time. Empty SUM returns BLANK. Interpretation: Recorded regular labor time, not scheduled capacity or total worked time.

## Overtime Hours

Reported overtime labor hours.

**Why this calculation:** Separates additional labor demand from regular working hours.
**Calculation formula:** Sum Fact_Attendance[Overtime Hours].
**DAX logic:** Separates additional labor demand from regular working hours. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Hours. · `#,##0.0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Higher values may show workload pressure, but do not establish staffing inadequacy by themselves.
**Limitations/exclusions:** No overtime pay rate or authorization policy is supplied; empty SUM returns BLANK.
**Where used:** Attendance & Workforce Utilization, Department Deep Dive
**Existing bindings:** 4 visual projection(s), including 2 card(s).

```dax
// Reported overtime labor hours.
// Why: Separates additional labor demand from regular working hours.
// Logic: Sum Fact_Attendance[Overtime Hours].
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Hours.
// Caveat: No overtime pay rate or authorization policy is supplied; empty SUM returns BLANK.
SUM('Fact_Attendance'[Overtime Hours])
```

**Model Description:** Reported overtime labor hours. Calculation: Sum Fact_Attendance[Overtime Hours]. Purpose: Separates additional labor demand from regular working hours. Unit: Hours. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: No overtime pay rate or authorization policy is supplied; empty SUM returns BLANK. Interpretation: Higher values may show workload pressure, but do not establish staffing inadequacy by themselves.

## Average Working Hours

Average regular working hours per recorded employee-day.

**Why this calculation:** Normalizes regular time for the number of recorded observations.
**Calculation formula:** Average Fact_Attendance[Working Hours].
**DAX logic:** Normalizes regular time for the number of recorded observations. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Hours per recorded employee-day. · `0.0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Includes zero-hour recorded statuses; it is not an average only among attended shifts.
**Limitations/exclusions:** Regular hours exclude overtime. AVERAGE ignores BLANK cells and returns BLANK without numeric observations.
**Where used:** Attendance & Workforce Utilization
**Existing bindings:** 2 visual projection(s), including 1 card(s).

```dax
// Average regular working hours per recorded employee-day.
// Why: Normalizes regular time for the number of recorded observations.
// Logic: Average Fact_Attendance[Working Hours].
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Hours per recorded employee-day.
// Caveat: Regular hours exclude overtime. AVERAGE ignores BLANK cells and returns BLANK without numeric observations.
AVERAGE('Fact_Attendance'[Working Hours])
```

**Model Description:** Average regular working hours per recorded employee-day. Calculation: Average Fact_Attendance[Working Hours]. Purpose: Normalizes regular time for the number of recorded observations. Unit: Hours per recorded employee-day. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: Regular hours exclude overtime. AVERAGE ignores BLANK cells and returns BLANK without numeric observations. Interpretation: Includes zero-hour recorded statuses; it is not an average only among attended shifts.

## Overtime Share of Working Hours

Overtime relative to reported regular hours.

**Why this calculation:** Measures overtime pressure against the regular-hours base.
**Calculation formula:** Overtime Hours / Working Hours.
**DAX logic:** Measures overtime pressure against the regular-hours base. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** This pressure ratio differs from overtime as a fraction of total hours and can exceed 100%.
**Limitations/exclusions:** Regular hours exclude overtime. Zero or BLANK regular hours returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Overtime relative to reported regular hours.
// Why: Measures overtime pressure against the regular-hours base.
// Logic: Overtime Hours / Working Hours.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Regular hours exclude overtime. Zero or BLANK regular hours returns BLANK.
DIVIDE([Overtime Hours],[Working Hours])
```

**Model Description:** Overtime relative to reported regular hours. Calculation: Overtime Hours / Working Hours. Purpose: Measures overtime pressure against the regular-hours base. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Regular hours exclude overtime. Zero or BLANK regular hours returns BLANK. Interpretation: This pressure ratio differs from overtime as a fraction of total hours and can exceed 100%.

## Attendance Employees

Distinct employees with at least one recorded attendance observation.

**Why this calculation:** Separates people observed from the number of employee-day records.
**Calculation formula:** Distinct count Fact_Attendance[Employee ID].
**DAX logic:** Separates people observed from the number of employee-day records. An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Interpretation:** An observation-coverage population, not lifecycle headcount.
**Limitations/exclusions:** One employee can appear on many days but is counted once per context. No attendance record means exclusion.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Distinct employees with at least one recorded attendance observation.
// Why: Separates people observed from the number of employee-day records.
// Logic: Distinct count Fact_Attendance[Employee ID].
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: One employee can appear on many days but is counted once per context. No attendance record means exclusion.
DISTINCTCOUNT('Fact_Attendance'[Employee ID])
```

**Model Description:** Distinct employees with at least one recorded attendance observation. Calculation: Distinct count Fact_Attendance[Employee ID]. Purpose: Separates people observed from the number of employee-day records. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written. Limitations: One employee can appear on many days but is counted once per context. No attendance record means exclusion. Interpretation: An observation-coverage population, not lifecycle headcount.

## Attendance Exceptions

Recorded employee-days marked Absent, Late or Half-Day.

**Why this calculation:** Combines observable statuses warranting review without fabricating service tickets.
**Calculation formula:** Absent Records + Late Records + Half Day Records.
**DAX logic:** Combines observable statuses warranting review without fabricating service tickets. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Higher means more exception observations; the measure does not rank their severity.
**Limitations/exclusions:** Does not include Leave status or unrecorded days; status components are mutually exclusive source rows.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Recorded employee-days marked Absent, Late or Half-Day.
// Why: Combines observable statuses warranting review without fabricating service tickets.
// Logic: Absent Records + Late Records + Half Day Records.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Does not include Leave status or unrecorded days; status components are mutually exclusive source rows.
[Absent Records]+[Late Records]+[Half Day Records]
```

**Model Description:** Recorded employee-days marked Absent, Late or Half-Day. Calculation: Absent Records + Late Records + Half Day Records. Purpose: Combines observable statuses warranting review without fabricating service tickets. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Does not include Leave status or unrecorded days; status components are mutually exclusive source rows. Interpretation: Higher means more exception observations; the measure does not rank their severity.

## Last Attendance Date

Most recent attendance observation in the full extract.

**Why this calculation:** Makes incomplete attendance coverage visible alongside other HR cutoff dates.
**Calculation formula:** Global maximum Fact_Attendance[Attendance Date] under REMOVEFILTERS().
**DAX logic:** Makes incomplete attendance coverage visible alongside other HR cutoff dates. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Calendar date, displayed dd MMM yyyy. · `dd MMM yyyy`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Global extract context; REMOVEFILTERS ignores Date, Department and all other report filters.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** This observation endpoint can precede the common payroll cutoff.
**Limitations/exclusions:** Ignores every report filter; not a per-department or selected-period last date.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Most recent attendance observation in the full extract.
// Why: Makes incomplete attendance coverage visible alongside other HR cutoff dates.
// Logic: Global maximum Fact_Attendance[Attendance Date] under REMOVEFILTERS().
// Context: Global extract context; REMOVEFILTERS ignores Date, Department and all other report filters.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Calendar date, displayed dd MMM yyyy.
// Caveat: Ignores every report filter; not a per-department or selected-period last date.
CALCULATE(MAX('Fact_Attendance'[Attendance Date]),REMOVEFILTERS())
```

**Model Description:** Most recent attendance observation in the full extract. Calculation: Global maximum Fact_Attendance[Attendance Date] under REMOVEFILTERS(). Purpose: Makes incomplete attendance coverage visible alongside other HR cutoff dates. Unit: Calendar date, displayed dd MMM yyyy. Date/filter context: Global extract context; REMOVEFILTERS ignores Date, Department and all other report filters. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Ignores every report filter; not a per-department or selected-period last date. Interpretation: This observation endpoint can precede the common payroll cutoff.

## Payroll Records

Employee-payroll-month transactions in the selected period context.

**Why this calculation:** The source grain was verified unique by employee and payroll month.
**Calculation formula:** Count Fact_Payroll rows.
**DAX logic:** The source grain was verified unique by employee and payroll month. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Interpretation:** Transaction exposure count, not distinct paid employees.
**Limitations/exclusions:** Payroll Period at month start is active; selecting partial daily windows can exclude entire months whose first day is outside selection.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Employee-payroll-month transactions in the selected period context.
// Why: The source grain was verified unique by employee and payroll month.
// Logic: Count Fact_Payroll rows.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Payroll Period at month start is active; selecting partial daily windows can exclude entire months whose first day is outside selection.
COUNTROWS('Fact_Payroll')
```

**Model Description:** Employee-payroll-month transactions in the selected period context. Calculation: Count Fact_Payroll rows. Purpose: The source grain was verified unique by employee and payroll month. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Limitations: Payroll Period at month start is active; selecting partial daily windows can exclude entire months whose first day is outside selection. Interpretation: Transaction exposure count, not distinct paid employees.

## Basic Payroll

Total basic salary recorded across selected employee-payroll months.

**Why this calculation:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
**Calculation formula:** Sum Fact_Payroll[Basic Salary].
**DAX logic:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Source monetary amount for the selected payroll periods; an increase is not inherently favorable.
**Limitations/exclusions:** Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
**Where used:** Payroll & Compensation
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Total basic salary recorded across selected employee-payroll months.
// Why: Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
// Logic: Sum Fact_Payroll[Basic Salary].
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Unspecified source monetary units.
// Caveat: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
SUM('Fact_Payroll'[Basic Salary])
```

**Model Description:** Total basic salary recorded across selected employee-payroll months. Calculation: Sum Fact_Payroll[Basic Salary]. Purpose: Aggregates the verified transaction grain rather than multiplying current annual employee salaries. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK. Interpretation: Source monetary amount for the selected payroll periods; an increase is not inherently favorable.

## Payroll Allowances

Total allowances recorded across selected employee-payroll months.

**Why this calculation:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
**Calculation formula:** Sum Fact_Payroll[Allowances].
**DAX logic:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Source monetary amount for the selected payroll periods; an increase is not inherently favorable.
**Limitations/exclusions:** Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
**Where used:** Payroll & Compensation
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Total allowances recorded across selected employee-payroll months.
// Why: Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
// Logic: Sum Fact_Payroll[Allowances].
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Unspecified source monetary units.
// Caveat: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
SUM('Fact_Payroll'[Allowances])
```

**Model Description:** Total allowances recorded across selected employee-payroll months. Calculation: Sum Fact_Payroll[Allowances]. Purpose: Aggregates the verified transaction grain rather than multiplying current annual employee salaries. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK. Interpretation: Source monetary amount for the selected payroll periods; an increase is not inherently favorable.

## Payroll Bonuses

Total bonuses recorded across selected employee-payroll months.

**Why this calculation:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
**Calculation formula:** Sum Fact_Payroll[Bonus].
**DAX logic:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Source monetary amount for the selected payroll periods; an increase is not inherently favorable.
**Limitations/exclusions:** Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
**Where used:** Payroll & Compensation
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Total bonuses recorded across selected employee-payroll months.
// Why: Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
// Logic: Sum Fact_Payroll[Bonus].
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Unspecified source monetary units.
// Caveat: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
SUM('Fact_Payroll'[Bonus])
```

**Model Description:** Total bonuses recorded across selected employee-payroll months. Calculation: Sum Fact_Payroll[Bonus]. Purpose: Aggregates the verified transaction grain rather than multiplying current annual employee salaries. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK. Interpretation: Source monetary amount for the selected payroll periods; an increase is not inherently favorable.

## Payroll Tax

Total tax withheld recorded across selected employee-payroll months.

**Why this calculation:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
**Calculation formula:** Sum Fact_Payroll[Tax].
**DAX logic:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Source monetary amount for the selected payroll periods; an increase is not inherently favorable.
**Limitations/exclusions:** Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
**Where used:** Payroll & Compensation
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Total tax withheld recorded across selected employee-payroll months.
// Why: Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
// Logic: Sum Fact_Payroll[Tax].
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Unspecified source monetary units.
// Caveat: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
SUM('Fact_Payroll'[Tax])
```

**Model Description:** Total tax withheld recorded across selected employee-payroll months. Calculation: Sum Fact_Payroll[Tax]. Purpose: Aggregates the verified transaction grain rather than multiplying current annual employee salaries. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK. Interpretation: Source monetary amount for the selected payroll periods; an increase is not inherently favorable.

## Payroll Deductions

Total other deductions recorded across selected employee-payroll months.

**Why this calculation:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
**Calculation formula:** Sum Fact_Payroll[Deductions].
**DAX logic:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Source monetary amount for the selected payroll periods; an increase is not inherently favorable.
**Limitations/exclusions:** Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
**Where used:** Payroll & Compensation
**Existing bindings:** 2 visual projection(s), including 1 card(s).

```dax
// Total other deductions recorded across selected employee-payroll months.
// Why: Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
// Logic: Sum Fact_Payroll[Deductions].
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Unspecified source monetary units.
// Caveat: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
SUM('Fact_Payroll'[Deductions])
```

**Model Description:** Total other deductions recorded across selected employee-payroll months. Calculation: Sum Fact_Payroll[Deductions]. Purpose: Aggregates the verified transaction grain rather than multiplying current annual employee salaries. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK. Interpretation: Source monetary amount for the selected payroll periods; an increase is not inherently favorable.

## Net Payroll

Total net pay recorded across selected employee-payroll months.

**Why this calculation:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
**Calculation formula:** Sum Fact_Payroll[Net Salary].
**DAX logic:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Source monetary amount for the selected payroll periods; an increase is not inherently favorable.
**Limitations/exclusions:** Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
**Where used:** Payroll & Compensation
**Existing bindings:** 3 visual projection(s), including 1 card(s).

```dax
// Total net pay recorded across selected employee-payroll months.
// Why: Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
// Logic: Sum Fact_Payroll[Net Salary].
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Unspecified source monetary units.
// Caveat: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
SUM('Fact_Payroll'[Net Salary])
```

**Model Description:** Total net pay recorded across selected employee-payroll months. Calculation: Sum Fact_Payroll[Net Salary]. Purpose: Aggregates the verified transaction grain rather than multiplying current annual employee salaries. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK. Interpretation: Source monetary amount for the selected payroll periods; an increase is not inherently favorable.

## Gross Payroll

Total gross pay recorded across selected employee-payroll months.

**Why this calculation:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
**Calculation formula:** Sum derived Gross Salary = Basic Salary + Allowances + Bonus on each payroll row.
**DAX logic:** Aggregates the verified transaction grain rather than multiplying current annual employee salaries. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Source monetary amount for the selected payroll periods; an increase is not inherently favorable.
**Limitations/exclusions:** Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
**Where used:** Department Context, Department Deep Dive, Executive Command Center, Payroll & Compensation
**Existing bindings:** 9 visual projection(s), including 4 card(s).

```dax
// Total gross pay recorded across selected employee-payroll months.
// Why: Aggregates the verified transaction grain rather than multiplying current annual employee salaries.
// Logic: Sum derived Gross Salary = Basic Salary + Allowances + Bonus on each payroll row.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Unspecified source monetary units.
// Caveat: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK.
SUM('Fact_Payroll'[Gross Salary])
```

**Model Description:** Total gross pay recorded across selected employee-payroll months. Calculation: Sum derived Gross Salary = Basic Salary + Allowances + Bonus on each payroll row. Purpose: Aggregates the verified transaction grain rather than multiplying current annual employee salaries. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: Currency and FX normalization are unspecified; do not label as USD or a normalized global cost. Empty SUM returns BLANK. Interpretation: Source monetary amount for the selected payroll periods; an increase is not inherently favorable.

## Payroll Employees

Distinct employees with payroll transactions in the selected context.

**Why this calculation:** Distinguishes paid people from employee-month transaction exposure.
**Calculation formula:** Distinct count Fact_Payroll[Employee ID].
**DAX logic:** Distinguishes paid people from employee-month transaction exposure. An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Interpretation:** People paid at least once during the selected payroll periods.
**Limitations/exclusions:** Not average headcount and not employee-months; an employee spanning multiple months counts once.
**Where used:** Payroll & Compensation
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Distinct employees with payroll transactions in the selected context.
// Why: Distinguishes paid people from employee-month transaction exposure.
// Logic: Distinct count Fact_Payroll[Employee ID].
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Not average headcount and not employee-months; an employee spanning multiple months counts once.
DISTINCTCOUNT('Fact_Payroll'[Employee ID])
```

**Model Description:** Distinct employees with payroll transactions in the selected context. Calculation: Distinct count Fact_Payroll[Employee ID]. Purpose: Distinguishes paid people from employee-month transaction exposure. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written. Limitations: Not average headcount and not employee-months; an employee spanning multiple months counts once. Interpretation: People paid at least once during the selected payroll periods.

## Payroll Employee Months

Number of unique employee-month payroll observations.

**Why this calculation:** Makes transaction exposure explicit for per-employee-month compensation ratios.
**Calculation formula:** Payroll Records + 0; source employee/payroll-month uniqueness was verified.
**DAX logic:** Makes transaction exposure explicit for per-employee-month compensation ratios. The explicit + 0 converts an empty Payroll Records BLANK to zero.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** The explicit + 0 converts an empty Payroll Records BLANK to zero.
**Interpretation:** Count of paid employee-months, not distinct employees.
**Limitations/exclusions:** The + 0 intentionally converts an empty Payroll Records BLANK to zero; source grain must remain unique.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Number of unique employee-month payroll observations.
// Why: Makes transaction exposure explicit for per-employee-month compensation ratios.
// Logic: Payroll Records + 0; source employee/payroll-month uniqueness was verified.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: The explicit + 0 converts an empty Payroll Records BLANK to zero.
// Unit: Count of the population described; displayed as an integer.
// Caveat: The + 0 intentionally converts an empty Payroll Records BLANK to zero; source grain must remain unique.
[Payroll Records]+0
```

**Model Description:** Number of unique employee-month payroll observations. Calculation: Payroll Records + 0; source employee/payroll-month uniqueness was verified. Purpose: Makes transaction exposure explicit for per-employee-month compensation ratios. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: The explicit + 0 converts an empty Payroll Records BLANK to zero. Limitations: The + 0 intentionally converts an empty Payroll Records BLANK to zero; source grain must remain unique. Interpretation: Count of paid employee-months, not distinct employees.

## Gross Payroll per Employee Month

Average gross compensation per observed employee-payroll month.

**Why this calculation:** Uses employee-month exposure so different-length selections remain more comparable.
**Calculation formula:** Gross Payroll / Payroll Records.
**DAX logic:** Uses employee-month exposure so different-length selections remain more comparable. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Unspecified source monetary units per employee-month. · `#,##0.00`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Source monetary units per employee-month, not annual employee compensation.
**Limitations/exclusions:** No currency normalization; a changing employee mix can change the ratio. Zero denominator returns BLANK.
**Where used:** Payroll & Compensation
**Existing bindings:** 2 visual projection(s), including 1 card(s).

```dax
// Average gross compensation per observed employee-payroll month.
// Why: Uses employee-month exposure so different-length selections remain more comparable.
// Logic: Gross Payroll / Payroll Records.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Unspecified source monetary units per employee-month.
// Caveat: No currency normalization; a changing employee mix can change the ratio. Zero denominator returns BLANK.
DIVIDE([Gross Payroll],[Payroll Records])
```

**Model Description:** Average gross compensation per observed employee-payroll month. Calculation: Gross Payroll / Payroll Records. Purpose: Uses employee-month exposure so different-length selections remain more comparable. Unit: Unspecified source monetary units per employee-month. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: No currency normalization; a changing employee mix can change the ratio. Zero denominator returns BLANK. Interpretation: Source monetary units per employee-month, not annual employee compensation.

## Net Payroll per Employee Month

Average net pay per observed employee-payroll month.

**Why this calculation:** Uses the same transaction exposure as gross compensation to support like-for-like payroll review.
**Calculation formula:** Net Payroll / Payroll Records.
**DAX logic:** Uses the same transaction exposure as gross compensation to support like-for-like payroll review. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Unspecified source monetary units per employee-month. · `#,##0.00`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Source monetary units per employee-month, not net pay per unique employee across the full interval.
**Limitations/exclusions:** Mix and period coverage affect results; currency unspecified; zero denominator returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Average net pay per observed employee-payroll month.
// Why: Uses the same transaction exposure as gross compensation to support like-for-like payroll review.
// Logic: Net Payroll / Payroll Records.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Unspecified source monetary units per employee-month.
// Caveat: Mix and period coverage affect results; currency unspecified; zero denominator returns BLANK.
DIVIDE([Net Payroll],[Payroll Records])
```

**Model Description:** Average net pay per observed employee-payroll month. Calculation: Net Payroll / Payroll Records. Purpose: Uses the same transaction exposure as gross compensation to support like-for-like payroll review. Unit: Unspecified source monetary units per employee-month. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Mix and period coverage affect results; currency unspecified; zero denominator returns BLANK. Interpretation: Source monetary units per employee-month, not net pay per unique employee across the full interval.

## Payroll Withholding Rate

Share of gross payroll withheld as tax and other deductions.

**Why this calculation:** Relates the two withholding components to the same gross-pay population.
**Calculation formula:** (Payroll Tax + Payroll Deductions) / Gross Payroll.
**DAX logic:** Relates the two withholding components to the same gross-pay population. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means more gross pay withheld, not higher employer benefit or payroll efficiency.
**Limitations/exclusions:** Not an employer tax burden or jurisdictional tax rate; unspecified currency; zero denominator returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Share of gross payroll withheld as tax and other deductions.
// Why: Relates the two withholding components to the same gross-pay population.
// Logic: (Payroll Tax + Payroll Deductions) / Gross Payroll.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Not an employer tax burden or jurisdictional tax rate; unspecified currency; zero denominator returns BLANK.
DIVIDE([Payroll Tax]+[Payroll Deductions],[Gross Payroll])
```

**Model Description:** Share of gross payroll withheld as tax and other deductions. Calculation: (Payroll Tax + Payroll Deductions) / Gross Payroll. Purpose: Relates the two withholding components to the same gross-pay population. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Not an employer tax burden or jurisdictional tax rate; unspecified currency; zero denominator returns BLANK. Interpretation: Higher means more gross pay withheld, not higher employer benefit or payroll efficiency.

## Payroll Reconciliation Difference

Residual in the aggregate gross-to-net payroll identity.

**Why this calculation:** Checks accounting consistency of payroll components under the current filters.
**Calculation formula:** Gross Payroll - Payroll Tax - Payroll Deductions - Net Payroll.
**DAX logic:** Checks accounting consistency of payroll components under the current filters. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Expected near zero; nonzero values warrant reconciliation before business interpretation.
**Limitations/exclusions:** Source row rounding can create small residuals; zero aggregate residual does not prove every row is correct.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Residual in the aggregate gross-to-net payroll identity.
// Why: Checks accounting consistency of payroll components under the current filters.
// Logic: Gross Payroll - Payroll Tax - Payroll Deductions - Net Payroll.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Unspecified source monetary units.
// Caveat: Source row rounding can create small residuals; zero aggregate residual does not prove every row is correct.
[Gross Payroll]-[Payroll Tax]-[Payroll Deductions]-[Net Payroll]
```

**Model Description:** Residual in the aggregate gross-to-net payroll identity. Calculation: Gross Payroll - Payroll Tax - Payroll Deductions - Net Payroll. Purpose: Checks accounting consistency of payroll components under the current filters. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Source row rounding can create small residuals; zero aggregate residual does not prove every row is correct. Interpretation: Expected near zero; nonzero values warrant reconciliation before business interpretation.

## Net Payroll by Payment Date

Net pay grouped by the payment-date calendar role.

**Why this calculation:** Provides an explicit cash-date alternative to the default payroll-period view.
**Calculation formula:** Net Payroll recalculated using USERELATIONSHIP between Dim_Date[Date] and Fact_Payroll[Payment Date].
**DAX logic:** Provides an explicit cash-date alternative to the default payroll-period view. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Payment Date actively filters this calculation through USERELATIONSHIP, replacing Payroll Period for this measure. Department and employee filters remain; dates after payroll coverage can appear.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Compare cash timing separately from the period in which compensation was earned.
**Limitations/exclusions:** Payment Date replaces the active payroll date role for this calculation. It can include payments after the common payroll cutoff under a full-year selection.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Net pay grouped by the payment-date calendar role.
// Why: Provides an explicit cash-date alternative to the default payroll-period view.
// Logic: Net Payroll recalculated using USERELATIONSHIP between Dim_Date[Date] and Fact_Payroll[Payment Date].
// Context: Payment Date actively filters this calculation through USERELATIONSHIP, replacing Payroll Period for this measure. Department and employee filters remain; dates after payroll coverage can appear.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Unspecified source monetary units.
// Caveat: Payment Date replaces the active payroll date role for this calculation. It can include payments after the common payroll cutoff under a full-year selection.
CALCULATE([Net Payroll],USERELATIONSHIP('Dim_Date'[Date],'Fact_Payroll'[Payment Date]))
```

**Model Description:** Net pay grouped by the payment-date calendar role. Calculation: Net Payroll recalculated using USERELATIONSHIP between Dim_Date[Date] and Fact_Payroll[Payment Date]. Purpose: Provides an explicit cash-date alternative to the default payroll-period view. Unit: Unspecified source monetary units. Date/filter context: Payment Date actively filters this calculation through USERELATIONSHIP, replacing Payroll Period for this measure. Department and employee filters remain; dates after payroll coverage can appear. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Payment Date replaces the active payroll date role for this calculation. It can include payments after the common payroll cutoff under a full-year selection. Interpretation: Compare cash timing separately from the period in which compensation was earned.

## Department Gross Payroll Share

Department gross payroll share after clearing the explicit department table and employee department-name filters.

**Why this calculation:** Shows the relative payroll allocation while retaining other demographic/job filters.
**Calculation formula:** Gross Payroll / Gross Payroll recalculated without Dim_Department and Employee Department filters.
**DAX logic:** Shows the relative payroll allocation while retaining other demographic/job filters. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Department`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Larger means a greater share of selected payroll, not automatically lower efficiency.
**Limitations/exclusions:** Other Employee attributes, including any separate department-key filter, remain. Denominator is not ALLSELECTED departments. Currency unspecified; zero denominator returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Department gross payroll share after clearing the explicit department table and employee department-name filters.
// Why: Shows the relative payroll allocation while retaining other demographic/job filters.
// Logic: Gross Payroll / Gross Payroll recalculated without Dim_Department and Employee Department filters.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Other Employee attributes, including any separate department-key filter, remain. Denominator is not ALLSELECTED departments. Currency unspecified; zero denominator returns BLANK.
DIVIDE([Gross Payroll],CALCULATE([Gross Payroll],REMOVEFILTERS('Dim_Department'),REMOVEFILTERS('Dim_Employee'[Department])))
```

**Model Description:** Department gross payroll share after clearing the explicit department table and employee department-name filters. Calculation: Gross Payroll / Gross Payroll recalculated without Dim_Department and Employee Department filters. Purpose: Shows the relative payroll allocation while retaining other demographic/job filters. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Other Employee attributes, including any separate department-key filter, remain. Denominator is not ALLSELECTED departments. Currency unspecified; zero denominator returns BLANK. Interpretation: Larger means a greater share of selected payroll, not automatically lower efficiency.

## Applications

Candidate application records within the selected application-date cohort.

**Why this calculation:** Uses an application grain separate from employee-master hires.
**Calculation formula:** Count Fact_Recruitment rows.
**DAX logic:** Uses an application grain separate from employee-master hires. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Interpretation:** Volume of applications recorded, not vacancies or hired employees.
**Limitations/exclusions:** Department filters apply; employee, grade and job slicers from Dim_Employee do not filter Recruitment. Empty count may be BLANK.
**Where used:** Recruitment & Hiring Intelligence
**Existing bindings:** 4 visual projection(s), including 1 card(s).

```dax
// Candidate application records within the selected application-date cohort.
// Why: Uses an application grain separate from employee-master hires.
// Logic: Count Fact_Recruitment rows.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Department filters apply; employee, grade and job slicers from Dim_Employee do not filter Recruitment. Empty count may be BLANK.
COUNTROWS('Fact_Recruitment')
```

**Model Description:** Candidate application records within the selected application-date cohort. Calculation: Count Fact_Recruitment rows. Purpose: Uses an application grain separate from employee-master hires. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Limitations: Department filters apply; employee, grade and job slicers from Dim_Employee do not filter Recruitment. Empty count may be BLANK. Interpretation: Volume of applications recorded, not vacancies or hired employees.

## Successful Hires

Applications whose current outcome snapshot is Hired.

**Why this calculation:** Keeps numerator and total applications in the same Application Date cohort.
**Calculation formula:** Applications with KEEPFILTERS Hiring Status = Hired.
**DAX logic:** Keeps numerator and total applications in the same Application Date cohort. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** An application outcome count; Hired applications cannot be equated with workforce New Hires.
**Limitations/exclusions:** No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected.
**Where used:** Recruitment & Hiring Intelligence
**Existing bindings:** 3 visual projection(s), including 1 card(s).

```dax
// Applications whose current outcome snapshot is Hired.
// Why: Keeps numerator and total applications in the same Application Date cohort.
// Logic: Applications with KEEPFILTERS Hiring Status = Hired.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected.
CALCULATE([Applications],KEEPFILTERS('Fact_Recruitment'[Hiring Status]="Hired"))
```

**Model Description:** Applications whose current outcome snapshot is Hired. Calculation: Applications with KEEPFILTERS Hiring Status = Hired. Purpose: Keeps numerator and total applications in the same Application Date cohort. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected. Interpretation: An application outcome count; Hired applications cannot be equated with workforce New Hires.

## Rejected Applications

Applications whose current outcome snapshot is Rejected.

**Why this calculation:** Keeps numerator and total applications in the same Application Date cohort.
**Calculation formula:** Applications with KEEPFILTERS Hiring Status = Rejected.
**DAX logic:** Keeps numerator and total applications in the same Application Date cohort. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** An application outcome count; Hired applications cannot be equated with workforce New Hires.
**Limitations/exclusions:** No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Applications whose current outcome snapshot is Rejected.
// Why: Keeps numerator and total applications in the same Application Date cohort.
// Logic: Applications with KEEPFILTERS Hiring Status = Rejected.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected.
CALCULATE([Applications],KEEPFILTERS('Fact_Recruitment'[Hiring Status]="Rejected"))
```

**Model Description:** Applications whose current outcome snapshot is Rejected. Calculation: Applications with KEEPFILTERS Hiring Status = Rejected. Purpose: Keeps numerator and total applications in the same Application Date cohort. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected. Interpretation: An application outcome count; Hired applications cannot be equated with workforce New Hires.

## On Hold Applications

Applications whose current outcome snapshot is On Hold.

**Why this calculation:** Keeps numerator and total applications in the same Application Date cohort.
**Calculation formula:** Applications with KEEPFILTERS Hiring Status = On Hold.
**DAX logic:** Keeps numerator and total applications in the same Application Date cohort. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** An application outcome count; Hired applications cannot be equated with workforce New Hires.
**Limitations/exclusions:** No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected.
**Where used:** HR Operations & Exceptions, Recruitment & Hiring Intelligence
**Existing bindings:** 4 visual projection(s), including 2 card(s).

```dax
// Applications whose current outcome snapshot is On Hold.
// Why: Keeps numerator and total applications in the same Application Date cohort.
// Logic: Applications with KEEPFILTERS Hiring Status = On Hold.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected.
CALCULATE([Applications],KEEPFILTERS('Fact_Recruitment'[Hiring Status]="On Hold"))
```

**Model Description:** Applications whose current outcome snapshot is On Hold. Calculation: Applications with KEEPFILTERS Hiring Status = On Hold. Purpose: Keeps numerator and total applications in the same Application Date cohort. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected. Interpretation: An application outcome count; Hired applications cannot be equated with workforce New Hires.

## Withdrawn Applications

Applications whose current outcome snapshot is Withdrawn.

**Why this calculation:** Keeps numerator and total applications in the same Application Date cohort.
**Calculation formula:** Applications with KEEPFILTERS Hiring Status = Withdrawn.
**DAX logic:** Keeps numerator and total applications in the same Application Date cohort. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** An application outcome count; Hired applications cannot be equated with workforce New Hires.
**Limitations/exclusions:** No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Applications whose current outcome snapshot is Withdrawn.
// Why: Keeps numerator and total applications in the same Application Date cohort.
// Logic: Applications with KEEPFILTERS Hiring Status = Withdrawn.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected.
CALCULATE([Applications],KEEPFILTERS('Fact_Recruitment'[Hiring Status]="Withdrawn"))
```

**Model Description:** Applications whose current outcome snapshot is Withdrawn. Calculation: Applications with KEEPFILTERS Hiring Status = Withdrawn. Purpose: Keeps numerator and total applications in the same Application Date cohort. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: No historical stage transitions, requisitions or employee linkage. Existing outcome filters are intersected. Interpretation: An application outcome count; Hired applications cannot be equated with workforce New Hires.

## Hiring Conversion Rate

Share of selected applications currently classified Hired.

**Why this calculation:** Compatible cohorts avoid mixing application inflow dates with joining events.
**Calculation formula:** Successful Hires / Applications from the same Application Date cohort.
**DAX logic:** Compatible cohorts avoid mixing application inflow dates with joining events. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means more selected applications have a Hired outcome snapshot.
**Limitations/exclusions:** Not a dated funnel stage conversion; recent cohorts may be less mature. An outcome slicer also affects the denominator; zero denominator returns BLANK.
**Where used:** Recruitment & Hiring Intelligence
**Existing bindings:** 3 visual projection(s), including 1 card(s).

```dax
// Share of selected applications currently classified Hired.
// Why: Compatible cohorts avoid mixing application inflow dates with joining events.
// Logic: Successful Hires / Applications from the same Application Date cohort.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Not a dated funnel stage conversion; recent cohorts may be less mature. An outcome slicer also affects the denominator; zero denominator returns BLANK.
DIVIDE([Successful Hires],[Applications])
```

**Model Description:** Share of selected applications currently classified Hired. Calculation: Successful Hires / Applications from the same Application Date cohort. Purpose: Compatible cohorts avoid mixing application inflow dates with joining events. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Not a dated funnel stage conversion; recent cohorts may be less mature. An outcome slicer also affects the denominator; zero denominator returns BLANK. Interpretation: Higher means more selected applications have a Hired outcome snapshot.

## On Hold Rate

Share of selected applications currently classified On Hold.

**Why this calculation:** Normalizes the observable held-application workload by application volume.
**Calculation formula:** On Hold Applications / Applications.
**DAX logic:** Normalizes the observable held-application workload by application volume. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher indicates a larger held share, not a measured approval SLA breach.
**Limitations/exclusions:** Current status snapshot by application cohort; no stage age or workflow timestamps. Zero denominator returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Share of selected applications currently classified On Hold.
// Why: Normalizes the observable held-application workload by application volume.
// Logic: On Hold Applications / Applications.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Current status snapshot by application cohort; no stage age or workflow timestamps. Zero denominator returns BLANK.
DIVIDE([On Hold Applications],[Applications])
```

**Model Description:** Share of selected applications currently classified On Hold. Calculation: On Hold Applications / Applications. Purpose: Normalizes the observable held-application workload by application volume. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Current status snapshot by application cohort; no stage age or workflow timestamps. Zero denominator returns BLANK. Interpretation: Higher indicates a larger held share, not a measured approval SLA breach.

## Joined Hired Applications

Hired application outcomes with a nonblank Joining Date.

**Why this calculation:** Defines the observed population eligible for application-to-join timing.
**Calculation formula:** Successful Hires with KEEPFILTERS on Joining Date not BLANK, retaining the Application Date cohort.
**DAX logic:** Defines the observed population eligible for application-to-join timing. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Recorded Hired outcomes with joining dates, not all joining events in the selected calendar interval.
**Limitations/exclusions:** Nonblank date is the eligibility test; no employee-master linkage or historical stage evidence is implied.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Hired application outcomes with a nonblank Joining Date.
// Why: Defines the observed population eligible for application-to-join timing.
// Logic: Successful Hires with KEEPFILTERS on Joining Date not BLANK, retaining the Application Date cohort.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Nonblank date is the eligibility test; no employee-master linkage or historical stage evidence is implied.
CALCULATE([Successful Hires],KEEPFILTERS(NOT ISBLANK('Fact_Recruitment'[Joining Date])))
```

**Model Description:** Hired application outcomes with a nonblank Joining Date. Calculation: Successful Hires with KEEPFILTERS on Joining Date not BLANK, retaining the Application Date cohort. Purpose: Defines the observed population eligible for application-to-join timing. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Nonblank date is the eligibility test; no employee-master linkage or historical stage evidence is implied. Interpretation: Recorded Hired outcomes with joining dates, not all joining events in the selected calendar interval.

## Hired Missing Joining Date

Hired outcomes lacking a recorded Joining Date.

**Why this calculation:** Identifies an actionable source completeness exception rather than inventing an HR ticket.
**Calculation formula:** Successful Hires - Joined Hired Applications.
**DAX logic:** Identifies an actionable source completeness exception rather than inventing an HR ticket. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Higher means more Hired outcome records need joining-date review.
**Limitations/exclusions:** Count is by Application Date cohort and snapshot status; a missing date does not itself prove the candidate has not joined.
**Where used:** HR Operations & Exceptions, Recruitment & Hiring Intelligence
**Existing bindings:** 3 visual projection(s), including 2 card(s).

```dax
// Hired outcomes lacking a recorded Joining Date.
// Why: Identifies an actionable source completeness exception rather than inventing an HR ticket.
// Logic: Successful Hires - Joined Hired Applications.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Count is by Application Date cohort and snapshot status; a missing date does not itself prove the candidate has not joined.
[Successful Hires]-[Joined Hired Applications]
```

**Model Description:** Hired outcomes lacking a recorded Joining Date. Calculation: Successful Hires - Joined Hired Applications. Purpose: Identifies an actionable source completeness exception rather than inventing an HR ticket. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Count is by Application Date cohort and snapshot status; a missing date does not itself prove the candidate has not joined. Interpretation: Higher means more Hired outcome records need joining-date review.

## Average Application to Join Days

Mean elapsed calendar days from application to joining for Hired outcomes with a joining date.

**Why this calculation:** Uses available dates without mislabeling the result time-to-offer or time-to-hire.
**Calculation formula:** Average derived Application to Join Days under KEEPFILTERS Hiring Status = Hired; BLANK joining intervals are excluded by AVERAGE.
**DAX logic:** Uses available dates without mislabeling the result time-to-offer or time-to-hire. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Calendar days. · `0.0`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Larger values mean longer recorded application-to-joining intervals among observed joined hires.
**Limitations/exclusions:** Application Date cohort is active. Missing joining dates are excluded, potentially biasing the observed mean; no offer date exists.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Mean elapsed calendar days from application to joining for Hired outcomes with a joining date.
// Why: Uses available dates without mislabeling the result time-to-offer or time-to-hire.
// Logic: Average derived Application to Join Days under KEEPFILTERS Hiring Status = Hired; BLANK joining intervals are excluded by AVERAGE.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Calendar days.
// Caveat: Application Date cohort is active. Missing joining dates are excluded, potentially biasing the observed mean; no offer date exists.
CALCULATE(AVERAGE('Fact_Recruitment'[Application to Join Days]),KEEPFILTERS('Fact_Recruitment'[Hiring Status]="Hired"))
```

**Model Description:** Mean elapsed calendar days from application to joining for Hired outcomes with a joining date. Calculation: Average derived Application to Join Days under KEEPFILTERS Hiring Status = Hired; BLANK joining intervals are excluded by AVERAGE. Purpose: Uses available dates without mislabeling the result time-to-offer or time-to-hire. Unit: Calendar days. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: Application Date cohort is active. Missing joining dates are excluded, potentially biasing the observed mean; no offer date exists. Interpretation: Larger values mean longer recorded application-to-joining intervals among observed joined hires.

## Average Application to Interview Days

Mean elapsed calendar days between application and interview.

**Why this calculation:** Measures a supported elapsed interval using the two recorded timestamps.
**Calculation formula:** Average derived Application to Interview Days across selected applications.
**DAX logic:** Measures a supported elapsed interval using the two recorded timestamps. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Calendar days. · `0.0`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Larger values mean longer observed time to interview.
**Limitations/exclusions:** Application Date cohort remains active; missing intervals are ignored. All supplied applications have interviews, so this is not an interview-conversion funnel.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Mean elapsed calendar days between application and interview.
// Why: Measures a supported elapsed interval using the two recorded timestamps.
// Logic: Average derived Application to Interview Days across selected applications.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Calendar days.
// Caveat: Application Date cohort remains active; missing intervals are ignored. All supplied applications have interviews, so this is not an interview-conversion funnel.
AVERAGE('Fact_Recruitment'[Application to Interview Days])
```

**Model Description:** Mean elapsed calendar days between application and interview. Calculation: Average derived Application to Interview Days across selected applications. Purpose: Measures a supported elapsed interval using the two recorded timestamps. Unit: Calendar days. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: Application Date cohort remains active; missing intervals are ignored. All supplied applications have interviews, so this is not an interview-conversion funnel. Interpretation: Larger values mean longer observed time to interview.

## Average Interview Score

Average recorded interview score across the selected application cohort.

**Why this calculation:** Describes assessment outcomes without assuming common pass thresholds or a causal hiring model.
**Calculation formula:** Average Fact_Recruitment[Interview Score].
**DAX logic:** Describes assessment outcomes without assuming common pass thresholds or a causal hiring model. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Source score points, displayed with one decimal place. · `0.0`
**Source model tables:** `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** A higher mean is a higher recorded score, not necessarily better recruiting effectiveness.
**Limitations/exclusions:** Application Date is active; AVERAGE ignores BLANK scores. Source rubric comparability is unverified.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Average recorded interview score across the selected application cohort.
// Why: Describes assessment outcomes without assuming common pass thresholds or a causal hiring model.
// Logic: Average Fact_Recruitment[Interview Score].
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Source score points, displayed with one decimal place.
// Caveat: Application Date is active; AVERAGE ignores BLANK scores. Source rubric comparability is unverified.
AVERAGE('Fact_Recruitment'[Interview Score])
```

**Model Description:** Average recorded interview score across the selected application cohort. Calculation: Average Fact_Recruitment[Interview Score]. Purpose: Describes assessment outcomes without assuming common pass thresholds or a causal hiring model. Unit: Source score points, displayed with one decimal place. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: Application Date is active; AVERAGE ignores BLANK scores. Source rubric comparability is unverified. Interpretation: A higher mean is a higher recorded score, not necessarily better recruiting effectiveness.

## Join Events

Applications with a nonblank joining date occurring in the selected calendar context.

**Why this calculation:** Separates dated events from the default application-cohort outcome counts.
**Calculation formula:** Count nonblank Joining Date using USERELATIONSHIP to that date role.
**DAX logic:** Separates dated events from the default application-cohort outcome counts. An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Fact_Recruitment`.
**Filter/date behavior:** Joining Date filters event rows through USERELATIONSHIP, replacing Application Date. Department applies; employee job, grade and demographics do not filter recruitment.
**Blanks and special cases:** An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Interpretation:** An event-date count, so it can differ from outcome counts for applications submitted in the same period.
**Limitations/exclusions:** The alternate date role replaces Application Date for this calculation. This is not a complete event-history or employee count.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Applications with a nonblank joining date occurring in the selected calendar context.
// Why: Separates dated events from the default application-cohort outcome counts.
// Logic: Count nonblank Joining Date using USERELATIONSHIP to that date role.
// Context: Joining Date filters event rows through USERELATIONSHIP, replacing Application Date. Department applies; employee job, grade and demographics do not filter recruitment.
// Empty/zero: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: The alternate date role replaces Application Date for this calculation. This is not a complete event-history or employee count.
CALCULATE(COUNT('Fact_Recruitment'[Joining Date]),USERELATIONSHIP('Dim_Date'[Date],'Fact_Recruitment'[Joining Date]))
```

**Model Description:** Applications with a nonblank joining date occurring in the selected calendar context. Calculation: Count nonblank Joining Date using USERELATIONSHIP to that date role. Purpose: Separates dated events from the default application-cohort outcome counts. Unit: Count of the population described; displayed as an integer. Date/filter context: Joining Date filters event rows through USERELATIONSHIP, replacing Application Date. Department applies; employee job, grade and demographics do not filter recruitment. Empty/zero behavior: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written. Limitations: The alternate date role replaces Application Date for this calculation. This is not a complete event-history or employee count. Interpretation: An event-date count, so it can differ from outcome counts for applications submitted in the same period.

## Interview Events

Applications with a nonblank interview date occurring in the selected calendar context.

**Why this calculation:** Separates dated events from the default application-cohort outcome counts.
**Calculation formula:** Count nonblank Interview Date using USERELATIONSHIP to that date role.
**DAX logic:** Separates dated events from the default application-cohort outcome counts. An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Fact_Recruitment`.
**Filter/date behavior:** Interview Date filters event rows through USERELATIONSHIP, replacing Application Date. Department applies; employee job, grade and demographics do not filter recruitment.
**Blanks and special cases:** An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Interpretation:** An event-date count, so it can differ from outcome counts for applications submitted in the same period.
**Limitations/exclusions:** The alternate date role replaces Application Date for this calculation. This is not a complete event-history or employee count.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Applications with a nonblank interview date occurring in the selected calendar context.
// Why: Separates dated events from the default application-cohort outcome counts.
// Logic: Count nonblank Interview Date using USERELATIONSHIP to that date role.
// Context: Interview Date filters event rows through USERELATIONSHIP, replacing Application Date. Department applies; employee job, grade and demographics do not filter recruitment.
// Empty/zero: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: The alternate date role replaces Application Date for this calculation. This is not a complete event-history or employee count.
CALCULATE(COUNT('Fact_Recruitment'[Interview Date]),USERELATIONSHIP('Dim_Date'[Date],'Fact_Recruitment'[Interview Date]))
```

**Model Description:** Applications with a nonblank interview date occurring in the selected calendar context. Calculation: Count nonblank Interview Date using USERELATIONSHIP to that date role. Purpose: Separates dated events from the default application-cohort outcome counts. Unit: Count of the population described; displayed as an integer. Date/filter context: Interview Date filters event rows through USERELATIONSHIP, replacing Application Date. Department applies; employee job, grade and demographics do not filter recruitment. Empty/zero behavior: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written. Limitations: The alternate date role replaces Application Date for this calculation. This is not a complete event-history or employee count. Interpretation: An event-date count, so it can differ from outcome counts for applications submitted in the same period.

## Performance Reviews

Recorded performance review events in the selected review-date context.

**Why this calculation:** Preserves the source review-event grain rather than treating each employee as one observation.
**Calculation formula:** Count Fact_Performance rows.
**DAX logic:** Preserves the source review-event grain rather than treating each employee as one observation. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Interpretation:** Review workload; the same employee can contribute multiple reviews over time.
**Limitations/exclusions:** Includes source self reviews and all rating categories unless filtered; empty COUNTROWS can be BLANK.
**Where used:** Performance Intelligence
**Existing bindings:** 2 visual projection(s), including 1 card(s).

```dax
// Recorded performance review events in the selected review-date context.
// Why: Preserves the source review-event grain rather than treating each employee as one observation.
// Logic: Count Fact_Performance rows.
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Includes source self reviews and all rating categories unless filtered; empty COUNTROWS can be BLANK.
COUNTROWS('Fact_Performance')
```

**Model Description:** Recorded performance review events in the selected review-date context. Calculation: Count Fact_Performance rows. Purpose: Preserves the source review-event grain rather than treating each employee as one observation. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Limitations: Includes source self reviews and all rating categories unless filtered; empty COUNTROWS can be BLANK. Interpretation: Review workload; the same employee can contribute multiple reviews over time.

## Reviewed Employees

Distinct employees with at least one selected performance review.

**Why this calculation:** Separates reviewed people from review event volume.
**Calculation formula:** Distinct count Fact_Performance[Employee ID].
**DAX logic:** Separates reviewed people from review event volume. An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Interpretation:** Review participation population, not a coverage rate against active workforce.
**Limitations/exclusions:** Review Date is active; multiple selected reviews for an employee count once. No review means exclusion.
**Where used:** Performance Intelligence
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Distinct employees with at least one selected performance review.
// Why: Separates reviewed people from review event volume.
// Logic: Distinct count Fact_Performance[Employee ID].
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Review Date is active; multiple selected reviews for an employee count once. No review means exclusion.
DISTINCTCOUNT('Fact_Performance'[Employee ID])
```

**Model Description:** Distinct employees with at least one selected performance review. Calculation: Distinct count Fact_Performance[Employee ID]. Purpose: Separates reviewed people from review event volume. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written. Limitations: Review Date is active; multiple selected reviews for an employee count once. No review means exclusion. Interpretation: Review participation population, not a coverage rate against active workforce.

## Average Performance Score

Review-event-weighted mean of the equal-weight mean of KPI, Productivity, Attendance and Teamwork source scores.

**Why this calculation:** Keeps the average aligned with recorded review events and their component scores.
**Calculation formula:** Average Fact_Performance[Composite Score].
**DAX logic:** Keeps the average aligned with recorded review events and their component scores. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Source score points, displayed with one decimal place. · `0.0`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Higher is a higher recorded score; review mix and repeated employee reviews affect the result.
**Limitations/exclusions:** The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored.
**Where used:** Department Context, Department Deep Dive, Performance Intelligence
**Existing bindings:** 5 visual projection(s), including 2 card(s).

```dax
// Review-event-weighted mean of the equal-weight mean of KPI, Productivity, Attendance and Teamwork source scores.
// Why: Keeps the average aligned with recorded review events and their component scores.
// Logic: Average Fact_Performance[Composite Score].
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Source score points, displayed with one decimal place.
// Caveat: The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored.
AVERAGE('Fact_Performance'[Composite Score])
```

**Model Description:** Review-event-weighted mean of the equal-weight mean of KPI, Productivity, Attendance and Teamwork source scores. Calculation: Average Fact_Performance[Composite Score]. Purpose: Keeps the average aligned with recorded review events and their component scores. Unit: Source score points, displayed with one decimal place. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored. Interpretation: Higher is a higher recorded score; review mix and repeated employee reviews affect the result.

## Average KPI Score

Review-event-weighted mean of the source KPI component score.

**Why this calculation:** Keeps the average aligned with recorded review events and their component scores.
**Calculation formula:** Average Fact_Performance[KPI Score].
**DAX logic:** Keeps the average aligned with recorded review events and their component scores. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Source score points, displayed with one decimal place. · `0.0`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Higher is a higher recorded score; review mix and repeated employee reviews affect the result.
**Limitations/exclusions:** The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored.
**Where used:** Performance Intelligence
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Review-event-weighted mean of the source KPI component score.
// Why: Keeps the average aligned with recorded review events and their component scores.
// Logic: Average Fact_Performance[KPI Score].
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Source score points, displayed with one decimal place.
// Caveat: The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored.
AVERAGE('Fact_Performance'[KPI Score])
```

**Model Description:** Review-event-weighted mean of the source KPI component score. Calculation: Average Fact_Performance[KPI Score]. Purpose: Keeps the average aligned with recorded review events and their component scores. Unit: Source score points, displayed with one decimal place. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored. Interpretation: Higher is a higher recorded score; review mix and repeated employee reviews affect the result.

## Average Productivity Score

Review-event-weighted mean of the source Productivity component score.

**Why this calculation:** Keeps the average aligned with recorded review events and their component scores.
**Calculation formula:** Average Fact_Performance[Productivity Score].
**DAX logic:** Keeps the average aligned with recorded review events and their component scores. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Source score points, displayed with one decimal place. · `0.0`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Higher is a higher recorded score; review mix and repeated employee reviews affect the result.
**Limitations/exclusions:** The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored.
**Where used:** Performance Intelligence
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Review-event-weighted mean of the source Productivity component score.
// Why: Keeps the average aligned with recorded review events and their component scores.
// Logic: Average Fact_Performance[Productivity Score].
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Source score points, displayed with one decimal place.
// Caveat: The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored.
AVERAGE('Fact_Performance'[Productivity Score])
```

**Model Description:** Review-event-weighted mean of the source Productivity component score. Calculation: Average Fact_Performance[Productivity Score]. Purpose: Keeps the average aligned with recorded review events and their component scores. Unit: Source score points, displayed with one decimal place. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored. Interpretation: Higher is a higher recorded score; review mix and repeated employee reviews affect the result.

## Average Attendance Score

Review-event-weighted mean of the source Attendance component score.

**Why this calculation:** Keeps the average aligned with recorded review events and their component scores.
**Calculation formula:** Average Fact_Performance[Attendance Score].
**DAX logic:** Keeps the average aligned with recorded review events and their component scores. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Source score points, displayed with one decimal place. · `0.0`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Higher is a higher recorded score; review mix and repeated employee reviews affect the result.
**Limitations/exclusions:** The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored.
**Where used:** Performance Intelligence
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Review-event-weighted mean of the source Attendance component score.
// Why: Keeps the average aligned with recorded review events and their component scores.
// Logic: Average Fact_Performance[Attendance Score].
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Source score points, displayed with one decimal place.
// Caveat: The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored.
AVERAGE('Fact_Performance'[Attendance Score])
```

**Model Description:** Review-event-weighted mean of the source Attendance component score. Calculation: Average Fact_Performance[Attendance Score]. Purpose: Keeps the average aligned with recorded review events and their component scores. Unit: Source score points, displayed with one decimal place. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored. Interpretation: Higher is a higher recorded score; review mix and repeated employee reviews affect the result.

## Average Teamwork Score

Review-event-weighted mean of the source Teamwork component score.

**Why this calculation:** Keeps the average aligned with recorded review events and their component scores.
**Calculation formula:** Average Fact_Performance[Teamwork Score].
**DAX logic:** Keeps the average aligned with recorded review events and their component scores. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Source score points, displayed with one decimal place. · `0.0`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Higher is a higher recorded score; review mix and repeated employee reviews affect the result.
**Limitations/exclusions:** The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored.
**Where used:** Performance Intelligence
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Review-event-weighted mean of the source Teamwork component score.
// Why: Keeps the average aligned with recorded review events and their component scores.
// Logic: Average Fact_Performance[Teamwork Score].
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Source score points, displayed with one decimal place.
// Caveat: The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored.
AVERAGE('Fact_Performance'[Teamwork Score])
```

**Model Description:** Review-event-weighted mean of the source Teamwork component score. Calculation: Average Fact_Performance[Teamwork Score]. Purpose: Keeps the average aligned with recorded review events and their component scores. Unit: Source score points, displayed with one decimal place. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: The composite is an analyst-defined equal-weight average, not the source Overall Rating. Includes self reviews unless filtered; BLANK values are ignored. Interpretation: Higher is a higher recorded score; review mix and repeated employee reviews affect the result.

## High Performer Reviews

Review events classified Excellent in source Overall Rating.

**Why this calculation:** Uses the actual categorical rating instead of inventing a numeric score threshold.
**Calculation formula:** Performance Reviews with KEEPFILTERS Overall Rating = Excellent.
**DAX logic:** Uses the actual categorical rating instead of inventing a numeric score threshold. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Count of Excellent review events, not unique high-performing employees.
**Limitations/exclusions:** Includes self reviews unless excluded through the Self Review filter; source category policy is not independently validated.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Review events classified Excellent in source Overall Rating.
// Why: Uses the actual categorical rating instead of inventing a numeric score threshold.
// Logic: Performance Reviews with KEEPFILTERS Overall Rating = Excellent.
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Includes self reviews unless excluded through the Self Review filter; source category policy is not independently validated.
CALCULATE([Performance Reviews],KEEPFILTERS('Fact_Performance'[Overall Rating]="Excellent"))
```

**Model Description:** Review events classified Excellent in source Overall Rating. Calculation: Performance Reviews with KEEPFILTERS Overall Rating = Excellent. Purpose: Uses the actual categorical rating instead of inventing a numeric score threshold. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Includes self reviews unless excluded through the Self Review filter; source category policy is not independently validated. Interpretation: Count of Excellent review events, not unique high-performing employees.

## High Performer Share

Share of selected review events rated Excellent.

**Why this calculation:** Normalizes the Excellent category against the same review-event population.
**Calculation formula:** High Performer Reviews / Performance Reviews.
**DAX logic:** Normalizes the Excellent category against the same review-event population. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means a larger Excellent share of reviews, not necessarily a larger unique employee cohort.
**Limitations/exclusions:** Existing rating filters can affect the denominator; zero or BLANK review count returns BLANK.
**Where used:** Performance Intelligence
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Share of selected review events rated Excellent.
// Why: Normalizes the Excellent category against the same review-event population.
// Logic: High Performer Reviews / Performance Reviews.
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Existing rating filters can affect the denominator; zero or BLANK review count returns BLANK.
DIVIDE([High Performer Reviews],[Performance Reviews])
```

**Model Description:** Share of selected review events rated Excellent. Calculation: High Performer Reviews / Performance Reviews. Purpose: Normalizes the Excellent category against the same review-event population. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Existing rating filters can affect the denominator; zero or BLANK review count returns BLANK. Interpretation: Higher means a larger Excellent share of reviews, not necessarily a larger unique employee cohort.

## Promotion Recommended Reviews

Review events with a source promotion recommendation of Yes.

**Why this calculation:** Reports the recorded recommendation without asserting that promotion occurred.
**Calculation formula:** Performance Reviews with KEEPFILTERS Promotion Recommendation = Yes.
**DAX logic:** Reports the recorded recommendation without asserting that promotion occurred. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Recommendation volume, not completed promotions or promotion eligibility.
**Limitations/exclusions:** Review Date cohort and source snapshot field; no dated promotion outcome is supplied.
**Where used:** Performance Intelligence
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Review events with a source promotion recommendation of Yes.
// Why: Reports the recorded recommendation without asserting that promotion occurred.
// Logic: Performance Reviews with KEEPFILTERS Promotion Recommendation = Yes.
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Review Date cohort and source snapshot field; no dated promotion outcome is supplied.
CALCULATE([Performance Reviews],KEEPFILTERS('Fact_Performance'[Promotion Recommendation]="Yes"))
```

**Model Description:** Review events with a source promotion recommendation of Yes. Calculation: Performance Reviews with KEEPFILTERS Promotion Recommendation = Yes. Purpose: Reports the recorded recommendation without asserting that promotion occurred. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Review Date cohort and source snapshot field; no dated promotion outcome is supplied. Interpretation: Recommendation volume, not completed promotions or promotion eligibility.

## Promotion Recommendation Rate

Share of review events recommending promotion.

**Why this calculation:** Uses a compatible review-event denominator.
**Calculation formula:** Promotion Recommended Reviews / Performance Reviews.
**DAX logic:** Uses a compatible review-event denominator. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means more selected reviews recommend promotion; no automatic favorable interpretation.
**Limitations/exclusions:** Not actual promotion rate; existing recommendation filters also affect denominator. Zero denominator returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Share of review events recommending promotion.
// Why: Uses a compatible review-event denominator.
// Logic: Promotion Recommended Reviews / Performance Reviews.
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Not actual promotion rate; existing recommendation filters also affect denominator. Zero denominator returns BLANK.
DIVIDE([Promotion Recommended Reviews],[Performance Reviews])
```

**Model Description:** Share of review events recommending promotion. Calculation: Promotion Recommended Reviews / Performance Reviews. Purpose: Uses a compatible review-event denominator. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Not actual promotion rate; existing recommendation filters also affect denominator. Zero denominator returns BLANK. Interpretation: Higher means more selected reviews recommend promotion; no automatic favorable interpretation.

## Self Reviews

Review events whose Reviewer ID equals Employee ID.

**Why this calculation:** Exposes review provenance as a measurable quality context.
**Calculation formula:** Performance Reviews with KEEPFILTERS Self Review = Yes; flag is derived by ID equality in Power Query.
**DAX logic:** Exposes review provenance as a measurable quality context. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** More self reviews may warrant interpretation alongside independent reviews; they are not automatically invalid.
**Limitations/exclusions:** Flag identifies ID equality only, not whether policy permits self assessment. Included in other score averages unless filtered.
**Where used:** HR Operations & Exceptions
**Existing bindings:** 2 visual projection(s), including 1 card(s).

```dax
// Review events whose Reviewer ID equals Employee ID.
// Why: Exposes review provenance as a measurable quality context.
// Logic: Performance Reviews with KEEPFILTERS Self Review = Yes; flag is derived by ID equality in Power Query.
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Flag identifies ID equality only, not whether policy permits self assessment. Included in other score averages unless filtered.
CALCULATE([Performance Reviews],KEEPFILTERS('Fact_Performance'[Self Review]="Yes"))
```

**Model Description:** Review events whose Reviewer ID equals Employee ID. Calculation: Performance Reviews with KEEPFILTERS Self Review = Yes; flag is derived by ID equality in Power Query. Purpose: Exposes review provenance as a measurable quality context. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Flag identifies ID equality only, not whether policy permits self assessment. Included in other score averages unless filtered. Interpretation: More self reviews may warrant interpretation alongside independent reviews; they are not automatically invalid.

## Self Review Share

Share of performance review events flagged as self reviews.

**Why this calculation:** Provides review-provenance context at comparable population scale.
**Calculation formula:** Self Reviews / Performance Reviews.
**DAX logic:** Provides review-provenance context at comparable population scale. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Performance`.
**Filter/date behavior:** Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means a larger self-assessment share of selected review events.
**Limitations/exclusions:** Not a confirmed error rate; zero or BLANK review count returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Share of performance review events flagged as self reviews.
// Why: Provides review-provenance context at comparable population scale.
// Logic: Self Reviews / Performance Reviews.
// Context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Not a confirmed error rate; zero or BLANK review count returns BLANK.
DIVIDE([Self Reviews],[Performance Reviews])
```

**Model Description:** Share of performance review events flagged as self reviews. Calculation: Self Reviews / Performance Reviews. Purpose: Provides review-provenance context at comparable population scale. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Review Date and Department/Employee filters select review events. Repeated employees retain review-event weighting; self reviews remain included unless filtered. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Not a confirmed error rate; zero or BLANK review count returns BLANK. Interpretation: Higher means a larger self-assessment share of selected review events.

## Training Enrollments

Employee training enrollment records starting in the selected context.

**Why this calculation:** Keeps learning activity at the supplied employee-enrollment grain.
**Calculation formula:** Count Fact_Training rows.
**DAX logic:** Keeps learning activity at the supplied employee-enrollment grain. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Training`.
**Filter/date behavior:** Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Interpretation:** Volume of enrollments, not unique participants, course sessions or training hours.
**Limitations/exclusions:** Start Date is active; Certification Status is an extract snapshot. Empty COUNTROWS can be BLANK.
**Where used:** Training & Development
**Existing bindings:** 3 visual projection(s), including 1 card(s).

```dax
// Employee training enrollment records starting in the selected context.
// Why: Keeps learning activity at the supplied employee-enrollment grain.
// Logic: Count Fact_Training rows.
// Context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Start Date is active; Certification Status is an extract snapshot. Empty COUNTROWS can be BLANK.
COUNTROWS('Fact_Training')
```

**Model Description:** Employee training enrollment records starting in the selected context. Calculation: Count Fact_Training rows. Purpose: Keeps learning activity at the supplied employee-enrollment grain. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Limitations: Start Date is active; Certification Status is an extract snapshot. Empty COUNTROWS can be BLANK. Interpretation: Volume of enrollments, not unique participants, course sessions or training hours.

## Training Participants

Distinct employees enrolled in selected training records.

**Why this calculation:** Separates people reached from multiple enrollments per person.
**Calculation formula:** Distinct count Fact_Training[Employee ID].
**DAX logic:** Separates people reached from multiple enrollments per person. An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Training`.
**Filter/date behavior:** Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
**Blanks and special cases:** An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
**Interpretation:** Participant reach for the selected start-date cohort, not an active-workforce participation rate.
**Limitations/exclusions:** Employees with no selected enrollment are excluded; multiple enrollments count once.
**Where used:** Training & Development
**Existing bindings:** 2 visual projection(s), including 1 card(s).

```dax
// Distinct employees enrolled in selected training records.
// Why: Separates people reached from multiple enrollments per person.
// Logic: Distinct count Fact_Training[Employee ID].
// Context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
// Empty/zero: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Employees with no selected enrollment are excluded; multiple enrollments count once.
DISTINCTCOUNT('Fact_Training'[Employee ID])
```

**Model Description:** Distinct employees enrolled in selected training records. Calculation: Distinct count Fact_Training[Employee ID]. Purpose: Separates people reached from multiple enrollments per person. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date. Empty/zero behavior: An empty selected population can return BLANK; qualifying identifiers/dates are counted as written. Limitations: Employees with no selected enrollment are excluded; multiple enrollments count once. Interpretation: Participant reach for the selected start-date cohort, not an active-workforce participation rate.

## Training Cost

Total recorded cost of selected training enrollments.

**Why this calculation:** Aggregates each enrollment cost once under the source grain.
**Calculation formula:** Sum Fact_Training[Training Cost].
**DAX logic:** Aggregates each enrollment cost once under the source grain. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Fact_Training`.
**Filter/date behavior:** Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Source monetary investment; higher cost does not establish higher learning impact.
**Limitations/exclusions:** Start Date cohort; currency, FX and whether costs are allocations versus invoices are unspecified. Empty SUM returns BLANK.
**Where used:** Department Context, Department Deep Dive, Training & Development
**Existing bindings:** 6 visual projection(s), including 3 card(s).

```dax
// Total recorded cost of selected training enrollments.
// Why: Aggregates each enrollment cost once under the source grain.
// Logic: Sum Fact_Training[Training Cost].
// Context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Unspecified source monetary units.
// Caveat: Start Date cohort; currency, FX and whether costs are allocations versus invoices are unspecified. Empty SUM returns BLANK.
SUM('Fact_Training'[Training Cost])
```

**Model Description:** Total recorded cost of selected training enrollments. Calculation: Sum Fact_Training[Training Cost]. Purpose: Aggregates each enrollment cost once under the source grain. Unit: Unspecified source monetary units. Date/filter context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: Start Date cohort; currency, FX and whether costs are allocations versus invoices are unspecified. Empty SUM returns BLANK. Interpretation: Source monetary investment; higher cost does not establish higher learning impact.

## Training Cost per Participant

Training cost per distinct employee participating in the selected cohort.

**Why this calculation:** Summarizes investment reach across people rather than enrollment rows.
**Calculation formula:** Training Cost / Training Participants.
**DAX logic:** Summarizes investment reach across people rather than enrollment rows. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Unspecified source monetary units per participant. · `#,##0.00`
**Source model tables:** `Fact_Training`.
**Filter/date behavior:** Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Source monetary units per participant; multiple enrollments can raise the result.
**Limitations/exclusions:** Currency unspecified; zero or BLANK participants returns BLANK. Not a causal return-on-training measure.
**Where used:** Department Deep Dive, Training & Development
**Existing bindings:** 2 visual projection(s), including 1 card(s).

```dax
// Training cost per distinct employee participating in the selected cohort.
// Why: Summarizes investment reach across people rather than enrollment rows.
// Logic: Training Cost / Training Participants.
// Context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Unspecified source monetary units per participant.
// Caveat: Currency unspecified; zero or BLANK participants returns BLANK. Not a causal return-on-training measure.
DIVIDE([Training Cost],[Training Participants])
```

**Model Description:** Training cost per distinct employee participating in the selected cohort. Calculation: Training Cost / Training Participants. Purpose: Summarizes investment reach across people rather than enrollment rows. Unit: Unspecified source monetary units per participant. Date/filter context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Currency unspecified; zero or BLANK participants returns BLANK. Not a causal return-on-training measure. Interpretation: Source monetary units per participant; multiple enrollments can raise the result.

## Training Cost per Enrollment

Average recorded training cost per selected enrollment.

**Why this calculation:** Uses enrollment exposure to describe unit training investment.
**Calculation formula:** Training Cost / Training Enrollments.
**DAX logic:** Uses enrollment exposure to describe unit training investment. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Unspecified source monetary units per enrollment. · `#,##0.00`
**Source model tables:** `Fact_Training`.
**Filter/date behavior:** Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Source monetary units per enrollment, not per person or training hour.
**Limitations/exclusions:** Currency unspecified; zero or BLANK enrollment count returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Average recorded training cost per selected enrollment.
// Why: Uses enrollment exposure to describe unit training investment.
// Logic: Training Cost / Training Enrollments.
// Context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Unspecified source monetary units per enrollment.
// Caveat: Currency unspecified; zero or BLANK enrollment count returns BLANK.
DIVIDE([Training Cost],[Training Enrollments])
```

**Model Description:** Average recorded training cost per selected enrollment. Calculation: Training Cost / Training Enrollments. Purpose: Uses enrollment exposure to describe unit training investment. Unit: Unspecified source monetary units per enrollment. Date/filter context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Currency unspecified; zero or BLANK enrollment count returns BLANK. Interpretation: Source monetary units per enrollment, not per person or training hour.

## Completed Training Enrollments

Enrollments whose current Certification Status is Completed.

**Why this calculation:** Measures observable completion status without inventing a dated certification event.
**Calculation formula:** Training Enrollments with KEEPFILTERS Certification Status = Completed.
**DAX logic:** Measures observable completion status without inventing a dated certification event. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Training`.
**Filter/date behavior:** Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Completed outcome count for the selected training-start cohort.
**Limitations/exclusions:** Status is a snapshot; planned End Date is not a completion timestamp. Existing status filters are intersected.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Enrollments whose current Certification Status is Completed.
// Why: Measures observable completion status without inventing a dated certification event.
// Logic: Training Enrollments with KEEPFILTERS Certification Status = Completed.
// Context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Status is a snapshot; planned End Date is not a completion timestamp. Existing status filters are intersected.
CALCULATE([Training Enrollments],KEEPFILTERS('Fact_Training'[Certification Status]="Completed"))
```

**Model Description:** Enrollments whose current Certification Status is Completed. Calculation: Training Enrollments with KEEPFILTERS Certification Status = Completed. Purpose: Measures observable completion status without inventing a dated certification event. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Status is a snapshot; planned End Date is not a completion timestamp. Existing status filters are intersected. Interpretation: Completed outcome count for the selected training-start cohort.

## Training Completion Rate

Share of selected training enrollments currently marked Completed.

**Why this calculation:** Keeps completed outcomes and total enrollments in the same start-date cohort.
**Calculation formula:** Completed Training Enrollments / Training Enrollments.
**DAX logic:** Keeps completed outcomes and total enrollments in the same start-date cohort. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Training`.
**Filter/date behavior:** Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means a larger completed-status share, which may depend on cohort maturity.
**Limitations/exclusions:** Not completion as of a historical selected date; current status and source coverage apply. Zero denominator returns BLANK.
**Where used:** Training & Development
**Existing bindings:** 2 visual projection(s), including 1 card(s).

```dax
// Share of selected training enrollments currently marked Completed.
// Why: Keeps completed outcomes and total enrollments in the same start-date cohort.
// Logic: Completed Training Enrollments / Training Enrollments.
// Context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Not completion as of a historical selected date; current status and source coverage apply. Zero denominator returns BLANK.
DIVIDE([Completed Training Enrollments],[Training Enrollments])
```

**Model Description:** Share of selected training enrollments currently marked Completed. Calculation: Completed Training Enrollments / Training Enrollments. Purpose: Keeps completed outcomes and total enrollments in the same start-date cohort. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Not completion as of a historical selected date; current status and source coverage apply. Zero denominator returns BLANK. Interpretation: Higher means a larger completed-status share, which may depend on cohort maturity.

## Average Training Days

Mean inclusive calendar span of selected training enrollments.

**Why this calculation:** Describes the available schedule span without converting it into unsupported learning hours.
**Calculation formula:** Average Training Days, derived as End Date - Start Date + 1.
**DAX logic:** Describes the available schedule span without converting it into unsupported learning hours. Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Unit / format:** Calendar days. · `0.0`
**Source model tables:** `Fact_Training`.
**Filter/date behavior:** Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
**Blanks and special cases:** Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
**Interpretation:** Longer spans mean more calendar days between scheduled start and end.
**Limitations/exclusions:** Includes weekends and planned future ends; not actual attendance, training hours or certified completion duration.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Mean inclusive calendar span of selected training enrollments.
// Why: Describes the available schedule span without converting it into unsupported learning hours.
// Logic: Average Training Days, derived as End Date - Start Date + 1.
// Context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date.
// Empty/zero: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied.
// Unit: Calendar days.
// Caveat: Includes weekends and planned future ends; not actual attendance, training hours or certified completion duration.
AVERAGE('Fact_Training'[Training Days])
```

**Model Description:** Mean inclusive calendar span of selected training enrollments. Calculation: Average Training Days, derived as End Date - Start Date + 1. Purpose: Describes the available schedule span without converting it into unsupported learning hours. Unit: Calendar days. Date/filter context: Active Training Start Date and Department/Employee filters select enrollment cohorts. Certification Status is a current extract snapshot, not a historical completion-event date. Empty/zero behavior: Averages ignore BLANK values; a mean without qualifying observations is BLANK unless zero is explicitly supplied. Limitations: Includes weekends and planned future ends; not actual attendance, training hours or certified completion duration. Interpretation: Longer spans mean more calendar days between scheduled start and end.

## Training End Events

Enrollment records grouped by recorded planned End Date.

**Why this calculation:** Provides an explicit scheduled end-date role separate from start cohorts.
**Calculation formula:** Training Enrollments recalculated using USERELATIONSHIP to Training End Date.
**DAX logic:** Provides an explicit scheduled end-date role separate from start cohorts. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Fact_Training`.
**Filter/date behavior:** Planned Training End Date filters through USERELATIONSHIP, replacing Start Date. Department and employee filters remain. Future planned ends are included if selected.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** A schedule-end count; it can include future planned ends.
**Limitations/exclusions:** Not a dated completion or certification event; current status is separate. No common-cutoff cap is added to this measure.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Enrollment records grouped by recorded planned End Date.
// Why: Provides an explicit scheduled end-date role separate from start cohorts.
// Logic: Training Enrollments recalculated using USERELATIONSHIP to Training End Date.
// Context: Planned Training End Date filters through USERELATIONSHIP, replacing Start Date. Department and employee filters remain. Future planned ends are included if selected.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Not a dated completion or certification event; current status is separate. No common-cutoff cap is added to this measure.
CALCULATE([Training Enrollments],USERELATIONSHIP('Dim_Date'[Date],'Fact_Training'[End Date]))
```

**Model Description:** Enrollment records grouped by recorded planned End Date. Calculation: Training Enrollments recalculated using USERELATIONSHIP to Training End Date. Purpose: Provides an explicit scheduled end-date role separate from start cohorts. Unit: Count of the population described; displayed as an integer. Date/filter context: Planned Training End Date filters through USERELATIONSHIP, replacing Start Date. Department and employee filters remain. Future planned ends are included if selected. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Not a dated completion or certification event; current status is separate. No common-cutoff cap is added to this measure. Interpretation: A schedule-end count; it can include future planned ends.

## Leave Requests

Recorded leave requests starting in the selected context.

**Why this calculation:** Measures actual available operational workload without inventing submission or approval events.
**Calculation formula:** Count Fact_Leave rows.
**DAX logic:** Measures actual available operational workload without inventing submission or approval events. COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Leave`.
**Filter/date behavior:** Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
**Blanks and special cases:** COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
**Interpretation:** Request volume, not unique employees or leave days actually consumed.
**Limitations/exclusions:** Start Date is active; approval status is a current extract snapshot, not historical backlog. Empty COUNTROWS can be BLANK.
**Where used:** HR Operations & Exceptions
**Existing bindings:** 1 visual projection(s), including 0 card(s).

```dax
// Recorded leave requests starting in the selected context.
// Why: Measures actual available operational workload without inventing submission or approval events.
// Logic: Count Fact_Leave rows.
// Context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
// Empty/zero: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Start Date is active; approval status is a current extract snapshot, not historical backlog. Empty COUNTROWS can be BLANK.
COUNTROWS('Fact_Leave')
```

**Model Description:** Recorded leave requests starting in the selected context. Calculation: Count Fact_Leave rows. Purpose: Measures actual available operational workload without inventing submission or approval events. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days. Empty/zero behavior: COUNTROWS can return BLANK when no rows qualify; this is intentionally preserved. Limitations: Start Date is active; approval status is a current extract snapshot, not historical backlog. Empty COUNTROWS can be BLANK. Interpretation: Request volume, not unique employees or leave days actually consumed.

## Requested Leave Days

Full requested duration of selected leave requests.

**Why this calculation:** Uses source durations without inventing a daily leave fact or splitting overlaps.
**Calculation formula:** Sum Fact_Leave[Total Days] under the request Start Date cohort.
**DAX logic:** Uses source durations without inventing a daily leave fact or splitting overlaps. SUM returns BLANK if no qualifying numeric rows exist.
**Unit / format:** Calendar days. · `#,##0`
**Source model tables:** `Fact_Leave`.
**Filter/date behavior:** Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
**Blanks and special cases:** SUM returns BLANK if no qualifying numeric rows exist.
**Interpretation:** Requested calendar-span days attached to selected requests.
**Limitations/exclusions:** Not days consumed within the displayed date window, unique overlapping days or working days; includes every approval status unless filtered.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Full requested duration of selected leave requests.
// Why: Uses source durations without inventing a daily leave fact or splitting overlaps.
// Logic: Sum Fact_Leave[Total Days] under the request Start Date cohort.
// Context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
// Empty/zero: SUM returns BLANK if no qualifying numeric rows exist.
// Unit: Calendar days.
// Caveat: Not days consumed within the displayed date window, unique overlapping days or working days; includes every approval status unless filtered.
SUM('Fact_Leave'[Total Days])
```

**Model Description:** Full requested duration of selected leave requests. Calculation: Sum Fact_Leave[Total Days] under the request Start Date cohort. Purpose: Uses source durations without inventing a daily leave fact or splitting overlaps. Unit: Calendar days. Date/filter context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days. Empty/zero behavior: SUM returns BLANK if no qualifying numeric rows exist. Limitations: Not days consumed within the displayed date window, unique overlapping days or working days; includes every approval status unless filtered. Interpretation: Requested calendar-span days attached to selected requests.

## Pending Leave Requests

Leave requests whose current approval-status snapshot is Pending.

**Why this calculation:** Shows observable request outcomes/workload by the available start-date cohort.
**Calculation formula:** Leave Requests with KEEPFILTERS Approval Status = Pending.
**DAX logic:** Shows observable request outcomes/workload by the available start-date cohort. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Leave`.
**Filter/date behavior:** Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** A status count for selected requests, not an approval-event count or historical SLA measure.
**Limitations/exclusions:** No submission, decision timestamp or approval SLA exists; status cannot reconstruct backlog as of a historical date.
**Where used:** HR Operations & Exceptions
**Existing bindings:** 3 visual projection(s), including 1 card(s).

```dax
// Leave requests whose current approval-status snapshot is Pending.
// Why: Shows observable request outcomes/workload by the available start-date cohort.
// Logic: Leave Requests with KEEPFILTERS Approval Status = Pending.
// Context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: No submission, decision timestamp or approval SLA exists; status cannot reconstruct backlog as of a historical date.
CALCULATE([Leave Requests],KEEPFILTERS('Fact_Leave'[Approval Status]="Pending"))
```

**Model Description:** Leave requests whose current approval-status snapshot is Pending. Calculation: Leave Requests with KEEPFILTERS Approval Status = Pending. Purpose: Shows observable request outcomes/workload by the available start-date cohort. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: No submission, decision timestamp or approval SLA exists; status cannot reconstruct backlog as of a historical date. Interpretation: A status count for selected requests, not an approval-event count or historical SLA measure.

## Approved Leave Requests

Leave requests whose current approval-status snapshot is Approved.

**Why this calculation:** Shows observable request outcomes/workload by the available start-date cohort.
**Calculation formula:** Leave Requests with KEEPFILTERS Approval Status = Approved.
**DAX logic:** Shows observable request outcomes/workload by the available start-date cohort. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Leave`.
**Filter/date behavior:** Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** A status count for selected requests, not an approval-event count or historical SLA measure.
**Limitations/exclusions:** No submission, decision timestamp or approval SLA exists; status cannot reconstruct backlog as of a historical date.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Leave requests whose current approval-status snapshot is Approved.
// Why: Shows observable request outcomes/workload by the available start-date cohort.
// Logic: Leave Requests with KEEPFILTERS Approval Status = Approved.
// Context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: No submission, decision timestamp or approval SLA exists; status cannot reconstruct backlog as of a historical date.
CALCULATE([Leave Requests],KEEPFILTERS('Fact_Leave'[Approval Status]="Approved"))
```

**Model Description:** Leave requests whose current approval-status snapshot is Approved. Calculation: Leave Requests with KEEPFILTERS Approval Status = Approved. Purpose: Shows observable request outcomes/workload by the available start-date cohort. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: No submission, decision timestamp or approval SLA exists; status cannot reconstruct backlog as of a historical date. Interpretation: A status count for selected requests, not an approval-event count or historical SLA measure.

## Rejected Leave Requests

Leave requests whose current approval-status snapshot is Rejected.

**Why this calculation:** Shows observable request outcomes/workload by the available start-date cohort.
**Calculation formula:** Leave Requests with KEEPFILTERS Approval Status = Rejected.
**DAX logic:** Shows observable request outcomes/workload by the available start-date cohort. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Fact_Leave`.
**Filter/date behavior:** Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** A status count for selected requests, not an approval-event count or historical SLA measure.
**Limitations/exclusions:** No submission, decision timestamp or approval SLA exists; status cannot reconstruct backlog as of a historical date.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Leave requests whose current approval-status snapshot is Rejected.
// Why: Shows observable request outcomes/workload by the available start-date cohort.
// Logic: Leave Requests with KEEPFILTERS Approval Status = Rejected.
// Context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: No submission, decision timestamp or approval SLA exists; status cannot reconstruct backlog as of a historical date.
CALCULATE([Leave Requests],KEEPFILTERS('Fact_Leave'[Approval Status]="Rejected"))
```

**Model Description:** Leave requests whose current approval-status snapshot is Rejected. Calculation: Leave Requests with KEEPFILTERS Approval Status = Rejected. Purpose: Shows observable request outcomes/workload by the available start-date cohort. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: No submission, decision timestamp or approval SLA exists; status cannot reconstruct backlog as of a historical date. Interpretation: A status count for selected requests, not an approval-event count or historical SLA measure.

## Approved Leave Days

Requested duration of requests currently marked Approved.

**Why this calculation:** Keeps approved durations aligned with their request-start cohort.
**Calculation formula:** Requested Leave Days with KEEPFILTERS Approval Status = Approved.
**DAX logic:** Keeps approved durations aligned with their request-start cohort. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Calendar days. · `#,##0`
**Source model tables:** `Fact_Leave`.
**Filter/date behavior:** Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Approved requested span, not actual leave consumed inside the selected calendar interval.
**Limitations/exclusions:** No overlap removal, working-day calendar or split across months. Status is a current snapshot.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Requested duration of requests currently marked Approved.
// Why: Keeps approved durations aligned with their request-start cohort.
// Logic: Requested Leave Days with KEEPFILTERS Approval Status = Approved.
// Context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Calendar days.
// Caveat: No overlap removal, working-day calendar or split across months. Status is a current snapshot.
CALCULATE([Requested Leave Days],KEEPFILTERS('Fact_Leave'[Approval Status]="Approved"))
```

**Model Description:** Requested duration of requests currently marked Approved. Calculation: Requested Leave Days with KEEPFILTERS Approval Status = Approved. Purpose: Keeps approved durations aligned with their request-start cohort. Unit: Calendar days. Date/filter context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: No overlap removal, working-day calendar or split across months. Status is a current snapshot. Interpretation: Approved requested span, not actual leave consumed inside the selected calendar interval.

## Pending Requested Days

Requested duration attached to currently Pending leave requests.

**Why this calculation:** Shows the duration volume behind observable pending request counts.
**Calculation formula:** Requested Leave Days with KEEPFILTERS Approval Status = Pending.
**DAX logic:** Shows the duration volume behind observable pending request counts. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Calendar days. · `#,##0`
**Source model tables:** `Fact_Leave`.
**Filter/date behavior:** Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Potential requested leave span awaiting source status resolution.
**Limitations/exclusions:** Not aged backlog, outstanding SLA days, or a historical pending snapshot. Dates are request starts, not submission dates.
**Where used:** HR Operations & Exceptions
**Existing bindings:** 2 visual projection(s), including 1 card(s).

```dax
// Requested duration attached to currently Pending leave requests.
// Why: Shows the duration volume behind observable pending request counts.
// Logic: Requested Leave Days with KEEPFILTERS Approval Status = Pending.
// Context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Calendar days.
// Caveat: Not aged backlog, outstanding SLA days, or a historical pending snapshot. Dates are request starts, not submission dates.
CALCULATE([Requested Leave Days],KEEPFILTERS('Fact_Leave'[Approval Status]="Pending"))
```

**Model Description:** Requested duration attached to currently Pending leave requests. Calculation: Requested Leave Days with KEEPFILTERS Approval Status = Pending. Purpose: Shows the duration volume behind observable pending request counts. Unit: Calendar days. Date/filter context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Not aged backlog, outstanding SLA days, or a historical pending snapshot. Dates are request starts, not submission dates. Interpretation: Potential requested leave span awaiting source status resolution.

## Leave Approval Rate

Share of selected leave requests currently classified Approved.

**Why this calculation:** Uses the same request-start cohort for numerator and denominator.
**Calculation formula:** Approved Leave Requests / Leave Requests.
**DAX logic:** Uses the same request-start cohort for numerator and denominator. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Leave`.
**Filter/date behavior:** Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher means a larger approved outcome share, not necessarily faster or better processing.
**Limitations/exclusions:** Includes Pending and Rejected in denominator; no decision-event timeline. Existing status filters affect denominator; zero denominator returns BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Share of selected leave requests currently classified Approved.
// Why: Uses the same request-start cohort for numerator and denominator.
// Logic: Approved Leave Requests / Leave Requests.
// Context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Includes Pending and Rejected in denominator; no decision-event timeline. Existing status filters affect denominator; zero denominator returns BLANK.
DIVIDE([Approved Leave Requests],[Leave Requests])
```

**Model Description:** Share of selected leave requests currently classified Approved. Calculation: Approved Leave Requests / Leave Requests. Purpose: Uses the same request-start cohort for numerator and denominator. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Leave Start Date and Department/Employee filters select request cohorts. Approval Status is a current extract snapshot; requested spans are not split into consumed calendar days. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Includes Pending and Rejected in denominator; no decision-event timeline. Existing status filters affect denominator; zero denominator returns BLANK. Interpretation: Higher means a larger approved outcome share, not necessarily faster or better processing.

## Leave End Events

Leave request records grouped by planned End Date.

**Why this calculation:** Provides an explicit end-date schedule role without altering the request-start measures.
**Calculation formula:** Leave Requests recalculated using USERELATIONSHIP to Leave End Date.
**DAX logic:** Provides an explicit end-date schedule role without altering the request-start measures. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Fact_Leave`.
**Filter/date behavior:** Planned Leave End Date filters through USERELATIONSHIP, replacing Start Date. Department and employee filters remain. Future planned ends are included if selected.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Request end-date volume, including future planned dates.
**Limitations/exclusions:** Not approval events or leave days consumed; no common-cutoff cap is added.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Leave request records grouped by planned End Date.
// Why: Provides an explicit end-date schedule role without altering the request-start measures.
// Logic: Leave Requests recalculated using USERELATIONSHIP to Leave End Date.
// Context: Planned Leave End Date filters through USERELATIONSHIP, replacing Start Date. Department and employee filters remain. Future planned ends are included if selected.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Not approval events or leave days consumed; no common-cutoff cap is added.
CALCULATE([Leave Requests],USERELATIONSHIP('Dim_Date'[Date],'Fact_Leave'[End Date]))
```

**Model Description:** Leave request records grouped by planned End Date. Calculation: Leave Requests recalculated using USERELATIONSHIP to Leave End Date. Purpose: Provides an explicit end-date schedule role without altering the request-start measures. Unit: Count of the population described; displayed as an integer. Date/filter context: Planned Leave End Date filters through USERELATIONSHIP, replacing Start Date. Department and employee filters remain. Future planned ends are included if selected. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Not approval events or leave days consumed; no common-cutoff cap is added. Interpretation: Request end-date volume, including future planned dates.

## New Hires Prior Equivalent Period

Prior-year new hires over dates equivalent to the effective current interval.

**Why this calculation:** Prevents comparing an incomplete current year with a full prior year.
**Calculation formula:** Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate New Hires over that inclusive interval.
**DAX logic:** Prevents comparing an incomplete current year with a full prior year. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** Prior-year baseline for the same effective month/day endpoints.
**Limitations/exclusions:** Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Prior-year new hires over dates equivalent to the effective current interval.
// Why: Prevents comparing an incomplete current year with a full prior year.
// Logic: Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate New Hires over that inclusive interval.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK.
VAR _s=[Period Start Date] VAR _e=[Period End Date] VAR _ps=EDATE(_s,-12) VAR _pe=EDATE(_e,-12) RETURN IF(_s>_e,BLANK(),CALCULATE([New Hires],REMOVEFILTERS('Dim_Date'),DATESBETWEEN('Dim_Date'[Date],_ps,_pe)))
```

**Model Description:** Prior-year new hires over dates equivalent to the effective current interval. Calculation: Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate New Hires over that inclusive interval. Purpose: Prevents comparing an incomplete current year with a full prior year. Unit: Count of the population described; displayed as an integer. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK. Interpretation: Prior-year baseline for the same effective month/day endpoints.

## New Hires YoY Change

Relative year-over-year change in new hires against the prior equivalent interval.

**Why this calculation:** Scales the difference by a compatible prior-year baseline.
**Calculation formula:** (New Hires - New Hires Prior Equivalent Period) / New Hires Prior Equivalent Period.
**DAX logic:** Scales the difference by a compatible prior-year baseline. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Date`, `Dim_Employee`, `Fact_Payroll`.
**Filter/date behavior:** Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Positive means an increase and negative a decrease; desirability depends on the business metric.
**Limitations/exclusions:** Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Relative year-over-year change in new hires against the prior equivalent interval.
// Why: Scales the difference by a compatible prior-year baseline.
// Logic: (New Hires - New Hires Prior Equivalent Period) / New Hires Prior Equivalent Period.
// Context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior.
DIVIDE([New Hires]-[New Hires Prior Equivalent Period],[New Hires Prior Equivalent Period])
```

**Model Description:** Relative year-over-year change in new hires against the prior equivalent interval. Calculation: (New Hires - New Hires Prior Equivalent Period) / New Hires Prior Equivalent Period. Purpose: Scales the difference by a compatible prior-year baseline. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Calendar min/max define explicit Employee Hire/Exit lifecycle windows, capped at global payroll month end. Dim_Date does not directly filter Employee. Department and employee filters apply using extract classifications. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior. Interpretation: Positive means an increase and negative a decrease; desirability depends on the business metric.

## Employee Exits Prior Equivalent Period

Prior-year employee exits over dates equivalent to the effective current interval.

**Why this calculation:** Prevents comparing an incomplete current year with a full prior year.
**Calculation formula:** Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate Employee Exits over that inclusive interval.
**DAX logic:** Prevents comparing an incomplete current year with a full prior year. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Fact_Exit`, `Fact_Payroll`.
**Filter/date behavior:** Exit Date filters departures; comparison measures replace calendar filters with prior equivalent dates. Lifecycle population helpers use selected min/max and global payroll coverage. Department and employee filters remain.
**Blanks and special cases:** Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** Prior-year baseline for the same effective month/day endpoints.
**Limitations/exclusions:** Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Prior-year employee exits over dates equivalent to the effective current interval.
// Why: Prevents comparing an incomplete current year with a full prior year.
// Logic: Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate Employee Exits over that inclusive interval.
// Context: Exit Date filters departures; comparison measures replace calendar filters with prior equivalent dates. Lifecycle population helpers use selected min/max and global payroll coverage. Department and employee filters remain.
// Empty/zero: Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK.
VAR _s=[Period Start Date] VAR _e=[Period End Date] VAR _ps=EDATE(_s,-12) VAR _pe=EDATE(_e,-12) RETURN IF(_s>_e,BLANK(),CALCULATE([Employee Exits],REMOVEFILTERS('Dim_Date'),DATESBETWEEN('Dim_Date'[Date],_ps,_pe)))
```

**Model Description:** Prior-year employee exits over dates equivalent to the effective current interval. Calculation: Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate Employee Exits over that inclusive interval. Purpose: Prevents comparing an incomplete current year with a full prior year. Unit: Count of the population described; displayed as an integer. Date/filter context: Exit Date filters departures; comparison measures replace calendar filters with prior equivalent dates. Lifecycle population helpers use selected min/max and global payroll coverage. Department and employee filters remain. Empty/zero behavior: Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK. Interpretation: Prior-year baseline for the same effective month/day endpoints.

## Employee Exits YoY Change

Relative year-over-year change in employee exits against the prior equivalent interval.

**Why this calculation:** Scales the difference by a compatible prior-year baseline.
**Calculation formula:** (Employee Exits - Employee Exits Prior Equivalent Period) / Employee Exits Prior Equivalent Period.
**DAX logic:** Scales the difference by a compatible prior-year baseline. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Date`, `Fact_Exit`, `Fact_Payroll`.
**Filter/date behavior:** Exit Date filters departures; comparison measures replace calendar filters with prior equivalent dates. Lifecycle population helpers use selected min/max and global payroll coverage. Department and employee filters remain.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Positive means an increase and negative a decrease; desirability depends on the business metric.
**Limitations/exclusions:** Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Relative year-over-year change in employee exits against the prior equivalent interval.
// Why: Scales the difference by a compatible prior-year baseline.
// Logic: (Employee Exits - Employee Exits Prior Equivalent Period) / Employee Exits Prior Equivalent Period.
// Context: Exit Date filters departures; comparison measures replace calendar filters with prior equivalent dates. Lifecycle population helpers use selected min/max and global payroll coverage. Department and employee filters remain.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior.
DIVIDE([Employee Exits]-[Employee Exits Prior Equivalent Period],[Employee Exits Prior Equivalent Period])
```

**Model Description:** Relative year-over-year change in employee exits against the prior equivalent interval. Calculation: (Employee Exits - Employee Exits Prior Equivalent Period) / Employee Exits Prior Equivalent Period. Purpose: Scales the difference by a compatible prior-year baseline. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Exit Date filters departures; comparison measures replace calendar filters with prior equivalent dates. Lifecycle population helpers use selected min/max and global payroll coverage. Department and employee filters remain. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior. Interpretation: Positive means an increase and negative a decrease; desirability depends on the business metric.

## Gross Payroll Prior Equivalent Period

Prior-year gross payroll over dates equivalent to the effective current interval.

**Why this calculation:** Prevents comparing an incomplete current year with a full prior year.
**Calculation formula:** Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate Gross Payroll over that inclusive interval.
**DAX logic:** Prevents comparing an incomplete current year with a full prior year. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** Prior-year baseline for the same effective month/day endpoints.
**Limitations/exclusions:** Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Prior-year gross payroll over dates equivalent to the effective current interval.
// Why: Prevents comparing an incomplete current year with a full prior year.
// Logic: Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate Gross Payroll over that inclusive interval.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Unspecified source monetary units.
// Caveat: Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK.
VAR _s=[Period Start Date] VAR _e=[Period End Date] VAR _ps=EDATE(_s,-12) VAR _pe=EDATE(_e,-12) RETURN IF(_s>_e,BLANK(),CALCULATE([Gross Payroll],REMOVEFILTERS('Dim_Date'),DATESBETWEEN('Dim_Date'[Date],_ps,_pe)))
```

**Model Description:** Prior-year gross payroll over dates equivalent to the effective current interval. Calculation: Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate Gross Payroll over that inclusive interval. Purpose: Prevents comparing an incomplete current year with a full prior year. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK. Interpretation: Prior-year baseline for the same effective month/day endpoints.

## Gross Payroll YoY Change

Relative year-over-year change in gross payroll against the prior equivalent interval.

**Why this calculation:** Scales the difference by a compatible prior-year baseline.
**Calculation formula:** (Gross Payroll - Gross Payroll Prior Equivalent Period) / Gross Payroll Prior Equivalent Period.
**DAX logic:** Scales the difference by a compatible prior-year baseline. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Positive means an increase and negative a decrease; desirability depends on the business metric.
**Limitations/exclusions:** Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior.
**Where used:** Executive Command Center
**Existing bindings:** 1 visual projection(s), including 1 card(s).

```dax
// Relative year-over-year change in gross payroll against the prior equivalent interval.
// Why: Scales the difference by a compatible prior-year baseline.
// Logic: (Gross Payroll - Gross Payroll Prior Equivalent Period) / Gross Payroll Prior Equivalent Period.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior.
DIVIDE([Gross Payroll]-[Gross Payroll Prior Equivalent Period],[Gross Payroll Prior Equivalent Period])
```

**Model Description:** Relative year-over-year change in gross payroll against the prior equivalent interval. Calculation: (Gross Payroll - Gross Payroll Prior Equivalent Period) / Gross Payroll Prior Equivalent Period. Purpose: Scales the difference by a compatible prior-year baseline. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior. Interpretation: Positive means an increase and negative a decrease; desirability depends on the business metric.

## Applications Prior Equivalent Period

Prior-year applications over dates equivalent to the effective current interval.

**Why this calculation:** Prevents comparing an incomplete current year with a full prior year.
**Calculation formula:** Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate Applications over that inclusive interval.
**DAX logic:** Prevents comparing an incomplete current year with a full prior year. Explicit BLANK guards and suppressed totals are retained exactly as written.
**Unit / format:** Count of the population described; displayed as an integer. · `#,##0`
**Source model tables:** `Dim_Date`, `Fact_Payroll`, `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** Explicit BLANK guards and suppressed totals are retained exactly as written.
**Interpretation:** Prior-year baseline for the same effective month/day endpoints.
**Limitations/exclusions:** Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Prior-year applications over dates equivalent to the effective current interval.
// Why: Prevents comparing an incomplete current year with a full prior year.
// Logic: Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate Applications over that inclusive interval.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: Explicit BLANK guards and suppressed totals are retained exactly as written.
// Unit: Count of the population described; displayed as an integer.
// Caveat: Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK.
VAR _s=[Period Start Date] VAR _e=[Period End Date] VAR _ps=EDATE(_s,-12) VAR _pe=EDATE(_e,-12) RETURN IF(_s>_e,BLANK(),CALCULATE([Applications],REMOVEFILTERS('Dim_Date'),DATESBETWEEN('Dim_Date'[Date],_ps,_pe)))
```

**Model Description:** Prior-year applications over dates equivalent to the effective current interval. Calculation: Shift selected start and capped end back 12 months with EDATE; remove existing date filters and evaluate Applications over that inclusive interval. Purpose: Prevents comparing an incomplete current year with a full prior year. Unit: Count of the population described; displayed as an integer. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: Explicit BLANK guards and suppressed totals are retained exactly as written. Limitations: Disjoint dates: previous windows span shifted min/max while current exit/transaction rows retain selected dates. EDATE handles month-end adjustments. Other filters remain; future-only current windows return BLANK. Interpretation: Prior-year baseline for the same effective month/day endpoints.

## Applications YoY Change

Relative year-over-year change in applications against the prior equivalent interval.

**Why this calculation:** Scales the difference by a compatible prior-year baseline.
**Calculation formula:** (Applications - Applications Prior Equivalent Period) / Applications Prior Equivalent Period.
**DAX logic:** Scales the difference by a compatible prior-year baseline. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Date`, `Fact_Payroll`, `Fact_Recruitment`.
**Filter/date behavior:** Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Positive means an increase and negative a decrease; desirability depends on the business metric.
**Limitations/exclusions:** Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Relative year-over-year change in applications against the prior equivalent interval.
// Why: Scales the difference by a compatible prior-year baseline.
// Logic: (Applications - Applications Prior Equivalent Period) / Applications Prior Equivalent Period.
// Context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior.
DIVIDE([Applications]-[Applications Prior Equivalent Period],[Applications Prior Equivalent Period])
```

**Model Description:** Relative year-over-year change in applications against the prior equivalent interval. Calculation: (Applications - Applications Prior Equivalent Period) / Applications Prior Equivalent Period. Purpose: Scales the difference by a compatible prior-year baseline. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Application Date selects the application cohort; Department applies. Employee job, grade and demographics do not filter recruitment. Outcome statuses are the current extract snapshot. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Zero or BLANK prior baseline returns BLANK. The prior interval is capped-equivalent, while the current base retains its documented date behavior. Interpretation: Positive means an increase and negative a decrease; desirability depends on the business metric.

## Gross Payroll Previous Month

Gross payroll for the complete month immediately before the capped selected endpoint month.

**Why this calculation:** Supplies a clearly defined one-month comparison to Gross Payroll Latest Month.
**Calculation formula:** Use EOMONTH to find prior month start/end, remove existing date filters, and calculate Gross Payroll in that month.
**DAX logic:** Supplies a clearly defined one-month comparison to Gross Payroll Latest Month. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Prior-month monetary baseline; it is not the previous full selected interval.
**Limitations/exclusions:** Other employee/department filters remain. No explicit future-only start guard; endpoint is capped. Currency unspecified.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Gross payroll for the complete month immediately before the capped selected endpoint month.
// Why: Supplies a clearly defined one-month comparison to Gross Payroll Latest Month.
// Logic: Use EOMONTH to find prior month start/end, remove existing date filters, and calculate Gross Payroll in that month.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Unspecified source monetary units.
// Caveat: Other employee/department filters remain. No explicit future-only start guard; endpoint is capped. Currency unspecified.
VAR _e=[Period End Date] VAR _s=EOMONTH(_e,-2)+1 VAR _p=EOMONTH(_e,-1) RETURN CALCULATE([Gross Payroll],REMOVEFILTERS('Dim_Date'),DATESBETWEEN('Dim_Date'[Date],_s,_p))
```

**Model Description:** Gross payroll for the complete month immediately before the capped selected endpoint month. Calculation: Use EOMONTH to find prior month start/end, remove existing date filters, and calculate Gross Payroll in that month. Purpose: Supplies a clearly defined one-month comparison to Gross Payroll Latest Month. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Other employee/department filters remain. No explicit future-only start guard; endpoint is capped. Currency unspecified. Interpretation: Prior-month monetary baseline; it is not the previous full selected interval.

## Gross Payroll Latest Month

Gross payroll in the month containing the capped selected endpoint.

**Why this calculation:** Extracts a single current comparison month from a wider selection.
**Calculation formula:** Replace date filters with dates from first of endpoint month through Period End Date, then evaluate Gross Payroll.
**DAX logic:** Extracts a single current comparison month from a wider selection. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Payroll-period source amount for the endpoint month, not total selected-period payroll.
**Limitations/exclusions:** Payroll Period is month start, so selected endpoint determines inclusion of the whole recorded monthly row. Currency unspecified.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Gross payroll in the month containing the capped selected endpoint.
// Why: Extracts a single current comparison month from a wider selection.
// Logic: Replace date filters with dates from first of endpoint month through Period End Date, then evaluate Gross Payroll.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Unspecified source monetary units.
// Caveat: Payroll Period is month start, so selected endpoint determines inclusion of the whole recorded monthly row. Currency unspecified.
VAR _e=[Period End Date] VAR _s=DATE(YEAR(_e),MONTH(_e),1) RETURN CALCULATE([Gross Payroll],REMOVEFILTERS('Dim_Date'),DATESBETWEEN('Dim_Date'[Date],_s,_e))
```

**Model Description:** Gross payroll in the month containing the capped selected endpoint. Calculation: Replace date filters with dates from first of endpoint month through Period End Date, then evaluate Gross Payroll. Purpose: Extracts a single current comparison month from a wider selection. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Payroll Period is month start, so selected endpoint determines inclusion of the whole recorded monthly row. Currency unspecified. Interpretation: Payroll-period source amount for the endpoint month, not total selected-period payroll.

## Gross Payroll MoM Change

Relative change between latest endpoint-month and immediately preceding month gross payroll.

**Why this calculation:** Compares equivalent monthly transaction periods rather than a long interval with a month.
**Calculation formula:** (Gross Payroll Latest Month - Gross Payroll Previous Month) / Gross Payroll Previous Month.
**DAX logic:** Compares equivalent monthly transaction periods rather than a long interval with a month. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Positive means month-on-month gross payroll growth; investigate mix, hiring and compensation before judging.
**Limitations/exclusions:** Zero or BLANK previous month returns BLANK; current endpoint is capped, currency unspecified.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Relative change between latest endpoint-month and immediately preceding month gross payroll.
// Why: Compares equivalent monthly transaction periods rather than a long interval with a month.
// Logic: (Gross Payroll Latest Month - Gross Payroll Previous Month) / Gross Payroll Previous Month.
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Zero or BLANK previous month returns BLANK; current endpoint is capped, currency unspecified.
DIVIDE([Gross Payroll Latest Month]-[Gross Payroll Previous Month],[Gross Payroll Previous Month])
```

**Model Description:** Relative change between latest endpoint-month and immediately preceding month gross payroll. Calculation: (Gross Payroll Latest Month - Gross Payroll Previous Month) / Gross Payroll Previous Month. Purpose: Compares equivalent monthly transaction periods rather than a long interval with a month. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Zero or BLANK previous month returns BLANK; current endpoint is capped, currency unspecified. Interpretation: Positive means month-on-month gross payroll growth; investigate mix, hiring and compensation before judging.

## Gross Payroll Rolling 12 Months

Gross payroll over the trailing 12-month window ending at the capped endpoint.

**Why this calculation:** Smooths individual-month effects using an explicit trailing window.
**Calculation formula:** Remove current calendar filters and evaluate Gross Payroll with DATESINPERIOD(endpoint, -12, MONTH).
**DAX logic:** Smooths individual-month effects using an explicit trailing window. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Unspecified source monetary units. · `#,##0.00`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Source monetary amount over the available rolling-year period.
**Limitations/exclusions:** Early source periods may have fewer than 12 observed months; not annualized. Other filters remain; currency unspecified.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Gross payroll over the trailing 12-month window ending at the capped endpoint.
// Why: Smooths individual-month effects using an explicit trailing window.
// Logic: Remove current calendar filters and evaluate Gross Payroll with DATESINPERIOD(endpoint, -12, MONTH).
// Context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Unspecified source monetary units.
// Caveat: Early source periods may have fewer than 12 observed months; not annualized. Other filters remain; currency unspecified.
VAR _e=[Period End Date] RETURN CALCULATE([Gross Payroll],REMOVEFILTERS('Dim_Date'),DATESINPERIOD('Dim_Date'[Date],_e,-12,MONTH))
```

**Model Description:** Gross payroll over the trailing 12-month window ending at the capped endpoint. Calculation: Remove current calendar filters and evaluate Gross Payroll with DATESINPERIOD(endpoint, -12, MONTH). Purpose: Smooths individual-month effects using an explicit trailing window. Unit: Unspecified source monetary units. Date/filter context: Active Payroll Period, represented by month start, selects employee-month transactions. Department and employee filters apply. Explicit prior/latest/rolling comparisons replace calendar filters as stated in their calculation. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Early source periods may have fewer than 12 observed months; not annualized. Other filters remain; currency unspecified. Interpretation: Source monetary amount over the available rolling-year period.

## Dynamic Workforce Title

Readable workforce snapshot title containing the capped as-of date.

**Why this calculation:** Keeps the snapshot endpoint visible when date filters change.
**Calculation formula:** Concatenate Workforce as of with Period End Date formatted dd MMM yyyy.
**DAX logic:** Keeps the snapshot endpoint visible when date filters change. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Text. · `@`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Read as the endpoint used by lifecycle metrics.
**Limitations/exclusions:** Text only; does not itself filter or validate the selected interval.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Readable workforce snapshot title containing the capped as-of date.
// Why: Keeps the snapshot endpoint visible when date filters change.
// Logic: Concatenate Workforce as of with Period End Date formatted dd MMM yyyy.
// Context: Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Text.
// Caveat: Text only; does not itself filter or validate the selected interval.
"Workforce as of " & FORMAT([Period End Date],"dd MMM yyyy")
```

**Model Description:** Readable workforce snapshot title containing the capped as-of date. Calculation: Concatenate Workforce as of with Period End Date formatted dd MMM yyyy. Purpose: Keeps the snapshot endpoint visible when date filters change. Unit: Text. Date/filter context: Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Text only; does not itself filter or validate the selected interval. Interpretation: Read as the endpoint used by lifecycle metrics.

## Dynamic Payroll Title

Readable payroll-period title containing the effective selected interval.

**Why this calculation:** Distinguishes payroll-period reporting from the explicit payment-date alternative.
**Calculation formula:** Concatenate Payroll periods with Selected Period Label.
**DAX logic:** Distinguishes payroll-period reporting from the explicit payment-date alternative. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Text. · `@`
**Source model tables:** `Dim_Date`, `Fact_Payroll`.
**Filter/date behavior:** Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Read alongside payroll totals to understand the displayed interval.
**Limitations/exclusions:** Text only; base payroll transactions follow Payroll Period at month start.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Readable payroll-period title containing the effective selected interval.
// Why: Distinguishes payroll-period reporting from the explicit payment-date alternative.
// Logic: Concatenate Payroll periods with Selected Period Label.
// Context: Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Text.
// Caveat: Text only; base payroll transactions follow Payroll Period at month start.
"Payroll periods • " & [Selected Period Label]
```

**Model Description:** Readable payroll-period title containing the effective selected interval. Calculation: Concatenate Payroll periods with Selected Period Label. Purpose: Distinguishes payroll-period reporting from the explicit payment-date alternative. Unit: Text. Date/filter context: Current Dim_Date selection; endpoint is capped where referenced. Department and employee selections do not change the global coverage cutoff. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: Text only; base payroll transactions follow Payroll Period at month start. Interpretation: Read alongside payroll totals to understand the displayed interval.

## Total Hours Worked

Recorded labor time including regular and overtime hours.

**Why this calculation:** Adds the separate source components once; check-in/out reconciliation included overnight shifts.
**Calculation formula:** Working Hours + Overtime Hours.
**DAX logic:** Adds the separate source components once; check-in/out reconciliation included overnight shifts. Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Unit / format:** Hours. · `#,##0.0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
**Interpretation:** Total recorded labor input, not scheduled capacity.
**Limitations/exclusions:** No double-counting of elapsed clock time; DAX arithmetic retains its existing blank-to-number coercion.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Recorded labor time including regular and overtime hours.
// Why: Adds the separate source components once; check-in/out reconciliation included overnight shifts.
// Logic: Working Hours + Overtime Hours.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added.
// Unit: Hours.
// Caveat: No double-counting of elapsed clock time; DAX arithmetic retains its existing blank-to-number coercion.
[Working Hours]+[Overtime Hours]
```

**Model Description:** Recorded labor time including regular and overtime hours. Calculation: Working Hours + Overtime Hours. Purpose: Adds the separate source components once; check-in/out reconciliation included overnight shifts. Unit: Hours. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: Existing DAX scalar and arithmetic BLANK behavior is preserved; no new empty-result substitution is added. Limitations: No double-counting of elapsed clock time; DAX arithmetic retains its existing blank-to-number coercion. Interpretation: Total recorded labor input, not scheduled capacity.

## Average Total Hours Worked

Total regular-plus-overtime hours per recorded employee-day.

**Why this calculation:** Normalizes all recorded labor time using the compatible observation count.
**Calculation formula:** Total Hours Worked / Attendance Records.
**DAX logic:** Normalizes all recorded labor time using the compatible observation count. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Hours per recorded employee-day. · `0.0`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Includes zero-hour statuses; not the mean among attended shifts only.
**Limitations/exclusions:** Zero or BLANK record count returns BLANK; unrecorded days remain outside the denominator.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Total regular-plus-overtime hours per recorded employee-day.
// Why: Normalizes all recorded labor time using the compatible observation count.
// Logic: Total Hours Worked / Attendance Records.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Hours per recorded employee-day.
// Caveat: Zero or BLANK record count returns BLANK; unrecorded days remain outside the denominator.
DIVIDE([Total Hours Worked],[Attendance Records])
```

**Model Description:** Total regular-plus-overtime hours per recorded employee-day. Calculation: Total Hours Worked / Attendance Records. Purpose: Normalizes all recorded labor time using the compatible observation count. Unit: Hours per recorded employee-day. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Zero or BLANK record count returns BLANK; unrecorded days remain outside the denominator. Interpretation: Includes zero-hour statuses; not the mean among attended shifts only.

## Overtime Share of Total Hours

Fraction of total recorded labor time attributable to overtime.

**Why this calculation:** Uses regular plus overtime as a common denominator for a true total-hours share.
**Calculation formula:** Overtime Hours / Total Hours Worked.
**DAX logic:** Uses regular plus overtime as a common denominator for a true total-hours share. DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Unit / format:** Ratio stored as a fraction; displayed as a percentage with one decimal place. · `0.0%`
**Source model tables:** `Fact_Attendance`.
**Filter/date behavior:** Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
**Blanks and special cases:** DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
**Interpretation:** Higher indicates a larger overtime mix of observed labor time.
**Limitations/exclusions:** Zero or BLANK total hours returns BLANK; this is not overtime cost share.
**Where used:** Available in the semantic model; not directly bound to an existing report visual.

```dax
// Fraction of total recorded labor time attributable to overtime.
// Why: Uses regular plus overtime as a common denominator for a true total-hours share.
// Logic: Overtime Hours / Total Hours Worked.
// Context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent.
// Empty/zero: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied.
// Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place.
// Caveat: Zero or BLANK total hours returns BLANK; this is not overtime cost share.
DIVIDE([Overtime Hours],[Total Hours Worked])
```

**Model Description:** Fraction of total recorded labor time attributable to overtime. Calculation: Overtime Hours / Total Hours Worked. Purpose: Uses regular plus overtime as a common denominator for a true total-hours share. Unit: Ratio stored as a fraction; displayed as a percentage with one decimal place. Date/filter context: Active Attendance Date and Department/Employee filters select recorded employee-days. Latest source observation is 27 June 2025; unrecorded dates are not inferred absent. Empty/zero behavior: DIVIDE returns BLANK for a zero or BLANK denominator; a BLANK numerator also stays BLANK even with a positive denominator. No alternate result is supplied. Limitations: Zero or BLANK total hours returns BLANK; this is not overtime cost share. Interpretation: Higher indicates a larger overtime mix of observed labor time.
