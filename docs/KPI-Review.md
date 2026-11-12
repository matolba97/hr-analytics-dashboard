# HR KPI review and semantic validation contract

Reviewed against the ten original `D:\Dashboard\Dataset\*.csv` files on 19 October 2026. This is an independent source and metric review; it is not evidence that a Power BI model has executed successfully.

## Decisions that must govern the report

1. **The observed data cut-off is June 2025, not August.** Employee hires end 31 May 2025; payroll periods end June 2025; exits, reviews, applications and interviews end 30 June 2025. Attendance ends Friday 27 June 2025, so Monday 30 June has no records. Leave ends extend to 22 September and training ends to 4 July; these are activity end dates and do not demonstrate later data extraction. Do not use the computer date as the report as-of date.
2. **Employment is a dated interval.** Count a person when `Hire Date <= As Of` and `Exit Date is blank OR Exit Date > As Of`. Exit Date is exclusive under this chosen convention. Include On Leave employees in workforce headcount; the current status text cannot reconstruct historical employment. There is no rehire history or historical department/job assignment.
3. **Daily average headcount is the preferred attrition denominator.** Average the lifecycle headcount on every calendar day of the selected contiguous interval. An opening/closing average is an approximation and must be called out if used. Include every exit type in overall attrition; offer voluntary attrition separately. Never label `1 - attrition rate` retention: departures of new entrants and a dynamic denominator break that identity.
4. **Attendance is sampled recorded employee-days.** There are 624,829 unique employee-date observations, not a schedule table. Denominators must say recorded days. `Present + Late + Half-Day` divided by recorded rows is observed presence; it is not a population attendance or scheduled utilization rate. A half-day weighted variant is valid only if explicitly labeled as such. Missing employee-days are not inferred absences.
5. **Payroll uses Payroll Month.** It is one employee-month, 69,406 unique rows. Payment Date is a different date role, mostly in the following month. Aggregate Basic + Allowances + Bonus for gross and use supplied Net Salary for net. Payroll months overlap hire/exit months correctly; testing the month-start date against a midmonth hire incorrectly creates false lifecycle violations.
6. **Recruitment is an application cohort.** There are 9,000 unique applications and candidate IDs, with one current outcome per application. All 9,000 have an interview date: a staged funnel cannot infer screening, offer, or historical stage conversion. Application-cohort hired share is supported; a numeric interview conversion of 100% adds no analytical value. The 1,919 Hired records are not linked to Employee IDs. Of those, 1,872 have Joining Date and 47 do not.
7. **Currency is unspecified.** The workforce spans countries but the files have no currency or exchange rates. Use `Amount (source units)` or a neutral number format; do not claim USD, EGP, or comparable normalized compensation. Department Budget has no year or currency, so do not calculate payroll-versus-budget utilization.
8. **Current dimensions describe today's recorded assignments.** Department, job, grade, country and manager breakdowns of historical facts use the latest employee record. Label historical analysis as current assignment where relevant. Recruitment has its own department and position and is independent of employee job filters.
9. **No future or annual extrapolation.** The default analytical window is 1 January–30 June 2025. Compare with 1 January–30 June 2024. Attendance YTD should compare through 27 June in both years, with a coverage note; June-only attendance is incomplete. Future leave end dates do not justify annual comparisons. Exclude unavailable months instead of plotting zeros.

## Date and filter rules

Use a contiguous date dimension and a clearly visible date range. For all period metrics, use the selected closed interval `[MIN(Date), MAX(Date)]`; either enforce a contiguous range or document that gaps in multi-select are treated as the bounding interval. The lifecycle headcount calculation must clear any Date-to-Hire-Date filter before evaluating employees while retaining department, job and employee filters. Opening headcount is the day before the period start; closing headcount is at period end. Do not sum headcount across months or departments to produce a time total.

| Domain | Default date role | Other role handling |
|---|---|---|
| Workforce | Date supplied by lifecycle measure | Hire counts filter Hire Date; exits filter Exit Date. Do not allow an active Hire Date relationship to remove old employees from closing headcount. |
| Attendance | Attendance Date | No schedule or shift calendar exists. |
| Payroll | First day of Payroll Month | Payment Date may use an explicitly named paid-on measure; no silent substitution. |
| Leave | Start Date | Requested days are allocated to the start-date cohort unless a separate daily allocation is explicitly built. End Date supports future commitments, not submission/approval dates. |
| Recruitment | Application Date | Joining Date measures count dated joins, not cohort hired decisions. Interview Date supports interview volume only. |
| Performance | Review Date | Reviewer is a role of Employee; self-reviews must remain visible as an exception. |
| Training | Start Date | Certification Status is a supplied snapshot, not a completion timestamp. |
| Exit | Exit Date | Headcount uses exit interval logic, not only Date relationship filtering. |

Prefer single-direction one-to-many relationships from conformed dimensions. Employee is unique by Employee ID; enrich it with department/job attributes to avoid dimension-to-dimension filtering and duplicate filter paths. A Department dimension can directly filter Employee and Recruitment; recruitment must not inherit a Candidate-to-Employee relationship. Date and Department must each have only one active unambiguous path to a given fact. A manager lookup is descriptive or a separate role-playing employee dimension; do not create a recursive Employee self-relationship. Inactive date relationships must have a corresponding explicit measure using them.

## KPI catalog

`N` means numerator; `D` means denominator. All rates use safe division returning blank for a missing/zero denominator. A true zero count should remain zero. Add explicit DAX measures with readable names, format strings, descriptions and domain display folders. Distribute measures to domain tables where feasible, following the semantic-model-authoring guidance.

| KPI | Business definition and calculation logic | Source and grain | Date/filter/comparison policy | Interpretation and caveat |
|---|---|---|---|---|
| Recorded Employees | Distinct Employee ID; no employment-period assumption | Employees; one row/person | Retain organizational filters; ignore Date | Ever-recorded employee base, not active workforce |
| Active Headcount As Of | Count lifecycle intervals containing period-end date | Employee joined to earliest Exit Date | As-of date; preserve organization filters | Includes On Leave; use only within supported source coverage |
| Opening Headcount | Lifecycle count at start minus one day | Employee interval | Date boundary, not sum of monthly stocks | Workforce at risk entering the period |
| Closing Headcount | Lifecycle count at period end | Employee interval | As-of stock | Reconcile opening + hires - exits |
| Average Daily Headcount | Mean of lifecycle counts for all calendar days in selected interval | Employee interval × selected dates | Same date window and population as exits | Preferred exact exposure denominator; opening/closing approximation must be labeled |
| New Hires | Distinct Employee IDs with Hire Date inside period | Employees; one row/person | Hire Date; same-period prior-year comparison | New employment events; no rehire events supplied |
| Employee Exits | Distinct exiting employees with Exit Date inside period | Exit; one row/exit, verified one/person | Exit Date; current department/job attribution | Includes voluntary, involuntary and retirement |
| Net Workforce Change | New Hires - Employee Exits | Lifecycle events | Same interval/population | Must equal Closing - Opening |
| Workforce Growth | N: Closing - Opening; D: Opening | Lifecycle stocks | Same boundaries; blank when opening 0 | Growth is not automatically beneficial |
| Attrition Rate | N: period exits; D: average daily headcount | Exit + Employee interval | Same period and org filters; not annualized | Overall exits relative to exposure; rate can exceed 100% in high-churn settings |
| Voluntary Attrition Rate | N: voluntary exits; D: average daily headcount | Exit + Employee interval | Exit Type = Voluntary only in N | Denominator remains total workforce; label separately |
| Opening Cohort Retention | N: people employed immediately before period start who remain employed at end; D: opening cohort | Employee interval | Same opening cohort; excludes hires during period | Supported retention definition; not 1 minus overall attrition |
| Average Active Tenure | Mean days from Hire Date to as-of, divided by 365.25 | Employee interval | Only employees active at selected as-of | Years; calendar approximation; no rehire reset history |
| Exit Tenure | Mean days Exit Date - Hire Date divided by 365.25 | Exit + Employee | Exit Date cohort | Distinguish from active tenure to avoid survivor bias |
| Recorded Attendance Days | Count Attendance rows | Attendance; employee-date | Attendance Date | A sampling/coverage indicator, not scheduled days |
| Observed Presence Rate | N: rows Present, Late or Half-Day; D: recorded attendance rows | Attendance; employee-date | Attendance Date and shift; equivalent coverage comparisons | A Half-Day counts as a presence observation; display exact definition |
| Half-Day Weighted Presence Rate | N: Present + Late + 0.5 × Half-Day; D: recorded attendance rows | Attendance; employee-date | Same observations | Optional alternative; a supplied policy weight, not verified scheduled hours |
| Recorded Absence Share | N: Absent rows; D: recorded attendance rows | Attendance; employee-date | Attendance Date | Does not treat Leave as absence; do not infer missing days |
| Recorded Leave Share | N: attendance status Leave; D: recorded attendance rows | Attendance; employee-date | Attendance Date | Not the same as approved Leave request days |
| Late Share of Attendance | N: Late rows; D: Present + Late + Half-Day rows | Attendance; employee-date | Attendance Date | Recorded punctuality among attendance observations |
| Working Hours | Sum Working Hours | Attendance; employee-date | Attendance Date | Actual recorded hours, not scheduled capacity |
| Hours per Attended Day | N: Working Hours; D: Present + Late + Half-Day rows | Attendance; employee-date | Attendance Date | Avoid averaging zeros for absent days if purpose is shift duration |
| Overtime Hours | Sum Overtime Hours | Attendance; employee-date | Attendance Date and shift | No overtime cost/rate exists; increase signals pressure, not success |
| Gross Payroll | Sum Basic Salary + Allowances + Bonus | Payroll; employee-month | Payroll Month; comparable payroll periods | Source units; do not also add Employee Salary/Bonus |
| Net Payroll | Sum Net Salary | Payroll; employee-month | Payroll Month | Reconciles gross less tax and deductions |
| Basic Payroll / Allowances / Payroll Bonus / Tax / Deductions | Sum each supplied component separately | Payroll; employee-month | Payroll Month | Distinguish Employee annual salary fields from payroll transactions |
| Paid Employees | Distinct Employee ID in payroll window | Payroll; employee-month | Payroll Month | Different from period-end headcount |
| Payroll per Paid Employee | N: period gross; D: distinct people paid during same period | Payroll; employee-month | Payroll Month | Period total per distinct payee; rises mechanically with window length |
| Average Gross per Employee-Month | N: gross payroll; D: payroll employee-month rows | Payroll; unique employee-month | Payroll Month | Preferred compensation comparison across different window lengths |
| Applications | Count Recruitment rows | Recruitment; application | Application Date; Department and Position | Candidate IDs happen to be unique; application is durable grain |
| Hired Applications | Count application rows with Hiring Status Hired | Recruitment; application | Application Date cohort | Outcome snapshot, not hire events on a decision date |
| Application Cohort Hired Share | N: Hired applications in selected application cohort; D: all applications in same cohort | Recruitment; application | Both sides Application Date; no Joining Date on N | 1,919/9,000 all-time; recent cohorts may have immature outcomes |
| Recorded Joins | Count Hired records with nonblank Joining Date in period | Recruitment; application | Joining Date explicitly | 47 Hired outcomes lack this date; not equivalent to Employee New Hires |
| Application-to-Join Days | Mean Joining Date - Application Date among Hired rows with valid dates | Recruitment; joined application | Application Date cohort by default; count usable observations | 1,872 usable rows; not time-to-hire because no offer/decision date |
| On Hold Applications | Count Hiring Status On Hold | Recruitment; application snapshot | Application Date cohort; status as supplied | Backlog status only; no stage age, last-action date, or SLA |
| Reviews | Count Performance rows | Performance; review | Review Date | Activity volume; people can have multiple reviews |
| Reviewed Employees | Distinct Employee ID in reviews | Performance; review | Review Date | Do not divide by closing HC for coverage without defining eligible cohort |
| Average KPI / Productivity / Attendance / Teamwork Score | Mean supplied numeric score, separately | Performance; review | Review Date; review-weighted | Repeated reviews weight people more heavily; state review weighted |
| Excellent Review Share | N: Overall Rating Excellent; D: reviews | Performance; review | Same review cohort | Excellent-only is a transparent high-rating rule; do not invent a numeric rating mapping |
| Promotion Recommended Share | N: reviews with Yes; D: reviews | Performance; review | Review Date | Recommendation, not an actual promotion outcome |
| Self-Review Exceptions | Count Reviewer ID = Employee ID | Performance; review | Review Date | 2,656 rows; separate quality issue from performance conclusion |
| Training Enrollments | Count Training rows | Training; employee-course enrollment | Start Date | No reusable course/session ID exists; do not claim distinct course counts from Training ID |
| Training Participants | Distinct Employee ID in Training | Training; employee-course enrollment | Start Date | Participation count; employee may enroll more than once |
| Training Cost | Sum Training Cost | Training; employee-course enrollment | Start Date | Source units; enrolled cost, not confirmed invoiced expenditure |
| Cost per Participant | N: training cost; D: distinct participants | Training; employee-course enrollment | Same Start Date cohort | Not cost per enrollment; both may be useful if named distinctly |
| Recorded Certification Completion Share | N: Certification Status Completed rows; D: training rows | Training; employee-course enrollment | Start Date cohort; snapshot status | Not completion speed or completion during a period |
| Leave Requests | Count Leave rows | Leave; request | Start Date | No request-submitted timestamp exists |
| Pending Leave Requests | Count Approval Status Pending | Leave; request snapshot | Start Date cohort; source as-of context | 1,488 all-time; cannot establish current workload in October 2026 |
| Approved Leave Days | Sum Total Days for Approved rows | Leave; request | Allocated to Start Date cohort | Calendar-day durations verified; not workdays and not daily allocated absence |
| Data Quality Exceptions | Sum explicitly defined exception counts, with separate categories | Domain facts/dimensions | Use each domain's applicable date | Never combine unrelated exception rates into an unexplained score |

## Independent numeric test oracle

Computed directly from CSVs using Python standard-library parsing. Amounts are source units. Headcount uses the exit-date-exclusive convention above.

| Test | Expected value |
|---|---:|
| Recorded employees | 3,000 |
| Lifecycle closing HC 31 December 2023 | 1,561 |
| Lifecycle closing HC 30 June 2024 | 1,777 |
| Lifecycle closing HC 31 December 2024 | 1,948 |
| Lifecycle closing HC 30 June 2025 | 2,071 |
| Current status Active / On Leave / Terminated | 2,015 / 56 / 929 |
| Jan–June 2024 opening / hires / exits / closing | 1,561 / 371 / 155 / 1,777 |
| Jan–June 2025 opening / hires / exits / closing | 1,948 / 365 / 242 / 2,071 |
| Jan–June 2024 daily average HC | 1,676.098901098901 |
| Jan–June 2025 daily average HC | 2,054.966850828729 |
| Jan–June 2024 attrition using daily average | 9.247664317325% |
| Jan–June 2025 attrition using daily average | 11.776345681800% |
| Jan–June 2024 opening cohort retention | 90.582959641256% |
| Jan–June 2025 opening cohort retention | 89.219712525667% |
| Attendance rows / unique employee-date pairs | 624,829 / 624,829 |
| Present / Late / Half-Day / Absent / Leave rows | 468,086 / 50,014 / 37,879 / 37,754 / 31,096 |
| Observed presence rate | 88.980985197550% |
| Half-day weighted presence rate | 85.949835875095% |
| Recorded absence share | 6.042293171412% |
| Working hours / overtime hours | 4,554,899.58 / 196,015.58 |
| Payroll rows / unique employee-month pairs | 69,406 / 69,406 |
| Basic / Allowances / Bonus | 543,148,839.25 / 75,923,434.73 / 6,825,462.47 |
| Gross / Net | 625,897,736.45 / 507,066,819.32 |
| Tax / Deductions | 100,024,359.94 / 18,806,557.19 |
| Applications / Hired / joined-date Hired | 9,000 / 1,919 / 1,872 |
| Application cohort hired share | 21.322222222222% |
| Hired missing Joining Date | 47 |
| Applications with Interview Date | 9,000 |
| Average application-to-join days | 44.407585470085 |
| Reviews / self-reviews / Excellent reviews | 9,795 / 2,656 / 66 |
| Training enrollments / participants / cost | 6,449 / 2,275 / 11,662,501.63 |
| Completed / In Progress / Not Certified training | 4,177 / 985 / 1,287 |
| Leave requests / Approved / Rejected / Pending | 19,418 / 16,024 / 1,906 / 1,488 |
| Exit total / Voluntary / Involuntary / Retirement | 929 / 667 / 210 / 52 |

## Model and DAX acceptance checks

- Refresh all ten sources; match row counts and keys before evaluating measures. Ensure Date coverage contains every default/alternate date role, while report defaults stop at the supported analytical cut-off.
- Assert uniqueness on Employee, Department, Job and Date keys; foreign-key completeness; unique attendance employee-date and payroll employee-month; exactly one exit per terminated employee. Preserve 764 null Manager IDs as Unknown/Unassigned, without treating them as orphan employees.
- Test all key measures at all-time, Jan–June 2025, Jan–June 2024, a single month, a single day and a department. Return expected zero/blank behavior for an empty date range or empty department cohort.
- Check `Closing = Opening + New Hires - Exits` in every department and every month. Use only interval-based headcount and ensure Date-to-Hire relationships cannot suppress old employees.
- On an employee's hire date, headcount contributes one; on exit date, it contributes zero under the stated convention. Do not remove an employee before their exit when exploring historical dates merely because current status is Terminated.
- Daily average headcount must include all calendar dates, including weekends and zero-headcount days, not only dates with fact records. Confirm leap-year behavior: Jan–June 2024 has 182 days; Jan–June 2025 has 181.
- Confirm numerator/denominator organization filters match for attrition and retention. Retention denominator must remain the opening cohort even when current-period hires are present.
- Test payroll Month slicing independently from Payment Date slicing. Net identity must reconcile within 0.01 per record. Never multiply payroll by attendance records through an accidental fact-to-fact join.
- For recruitment, compare Hired application counts under Application Date versus recorded joins under Joining Date to confirm role distinction. Position/Department filters must apply to both conversion numerator and denominator. Employee Job/Gender should not silently filter an unrelated candidate population.
- Attendance status shares should sum to 100% across the five categories. Observed presence plus Absent plus Leave equals 100%. Weighted presence intentionally does not obey this latter sum because Half-Day is weighted.
- Compare review means at row grain; distinguish employee-weighted from review-weighted means. Show the count of reviews contributing to a score and preserve the self-review exception category.
- Exclude future months from annual trend comparisons; prior-year KPIs must use exactly matched elapsed periods. If attendance is capped 27 June, use an attendance-specific comparison cap rather than extending missing days as zero.
- Validate DAX with actual model queries, including `EVALUATE INFO.MEASURES()` error messages and a compact `ROW(...)` KPI query. Static syntax inspection is not runtime validation. Store expected versus actual and tolerance in the validation evidence.
- Verify totals under Department/Job slicers and cross-highlighting, especially stock measures, ratios and employee distinct counts. Counts of distinct people need not sum across time periods. Ratios must recalculate from totals rather than average displayed percentages.
- Test role-playing relationships only through named measures, hide foreign keys and aggregated base columns, disable implicit numeric aggregation, apply explicit number/percentage formatting, and mark/sort calendar attributes correctly.

## Measures to omit or clearly qualify

No scheduled utilization, FTE, open requisitions, offer acceptance, time-to-hire, vacancy days, recruitment cost, SLA compliance, current operational aging, salary inflation normalized across currencies, promotion outcomes, training effectiveness/ROI, or causal driver conclusions are supported by the supplied files. Age/tenure correlations and departmental differences describe associations; they do not explain why exits or performance outcomes occurred. Leave approval status is a snapshot without request/approval timestamps. A dense date calendar does not make missing observations complete.
