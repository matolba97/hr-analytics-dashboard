# Portfolio publication QA

Verification date: **12 November 2026**. This document separates current publication checks from earlier engineering evidence.

## Current checks

- The existing saved PBIP opened successfully in Power BI Desktop 2.157.1354.0. All 51 pages were captured with zero capture failures; the ten analytical pages were recaptured after dismissing a recovery notification and reviewed for populated cards/charts/tables, readable headings and visible filters.
- Ten optimized, proportionally resized PNGs are retained in the public screenshot gallery. Native full-resolution captures remain local and ignored by Git.
- Report and semantic-model source files were copied into a separate portfolio folder. The original report, calculations and architecture were not refactored. No imported data cache or binary PBIX is included.
- All ten supplied CSVs match the Git blob hashes at the credited upstream commit. Raw data remains local and ignored. No upstream license was declared; no dataset license is invented.
- Static portfolio checks cover JSON parsing, 51 total / 10 visible pages, 120 measures, 20 relationships, 67 explanatory card assignments, report binding resolution, local Markdown links and Git's tracked publication scope.
- Power BI Service's existing public report rendered anonymously. The Attrition page returned 242 exits, 11.8% period attrition, 89.2% opening-cohort retention and average daily headcount of 2,055.0 for JanuaryÃ¢â‚¬â€œJune 2025, matching the local view at displayed precision. Initial loading was slow; HTTP 200 alone was not treated as proof of rendered visuals.

Schema validation returned **zero errors and one warning**: Microsoft's remote theme schema (`reportThemeSchema-2.153.json`) could not be loaded. This is not reported as a fully clean theme-schema validation. Required `.platform` item metadata was retained after validation identified it as necessary.

Production Finance filter check: 2025 / Finance returned **188** employed people, **29** hires, **19** exits, **10.3%** attrition and **12.46M** gross payroll at displayed precision. The department scorecard exposed the exact gross total **12,462,514.74**, matching the local engineering baseline. An actual [browser screenshot](../screenshots/live-finance.jpg) is retained.

## Historical enhancement evidence

The October 2026 enhancement recorded [840 exact before/after measure matches](enhancement_measure_value_comparison.json) across seven contexts and [1,976 semantic checks](enhancement_semantic_validation.json). These are preserved historical results; this portfolio task does not claim a fresh full-engine recalculation across all seven contexts.

The old exact October report-preservation script was rerun and failed against later saved presentation state. Inspection identified a collapsed filter pane, empty general-property objects, schema version serialization, empty filter-pane placeholders and equivalent paragraph serialization. Those findings are not hidden or relabeled as a passing exact-baseline comparison. Current source checks and rendered Desktop inspection assess the actual saved version.

## Runtime and deployment boundaries

There is no web application dependency installation, frontend lint command or production bundle to build. This is an editable native Power BI Import project. Python checks use the standard library; the separate report schema check uses Microsoft's report-authoring CLI.

The live URL reuses the owner's pre-existing Power BI Service publication. No Vercel, Netlify or GitHub Pages deployment was created, and no existing remote report was overwritten. Displayed results and page behavior can be compared with the repository, but a byte-for-byte Service definition/model equivalence claim requires an authenticated export and is not established by screenshots.

Raw data is not distributed in GitHub. A first-time clone requires independently obtaining the credited source files, setting DatasetRoot and refreshing. The source's synthetic status is not established. No private HR data or unverified dataset license should be inferred from its public availability.

## Published repository verification

The public repository is [matolba97/hr-analytics-dashboard](https://github.com/matolba97/hr-analytics-dashboard). Owner, visibility, About description, topics and live homepage were read back after publication. The README rendered with its source credit and all five embedded dashboard screenshots plus its model diagram loaded successfully in GitHub. All ten production page navigation checks completed; Finance propagated to Workforce and was restored to All afterward. [Production check record](live-navigation-checks.json).

Static validation passed before publication. Source verification matched all ten upstream files. No frontend build or lint target exists. The standard Git whitespace check reported pre-existing blank lines at the ends of native TMDL files; these formatting details were retained with the original model.

## Reproduce static checks

```text
python scripts/validate_portfolio.py
python scripts/verify_data.py <local-source-folder>
powerbi-report-author validate "PowerBI-Project/HR Intelligence.Report"
```

Source verification checks exact file content; it does not establish redistribution rights. Static validation does not execute DAX or replace native visual and interaction checks.
