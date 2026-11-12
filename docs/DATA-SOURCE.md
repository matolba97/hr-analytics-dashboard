# Data provenance, attribution and publication scope

The data used for this dashboard was obtained from **[Vikash Giri's HR Analytics end-to-end project](https://github.com/vikashGiri27/HR-Analytics-end-to-end-project)**. Credit for the source dataset belongs to that repository and its contributors. This portfolio contains a separately developed Power BI report and semantic model; it does not claim authorship of the dataset or reproduce the upstream SQL, PBIX, dashboard images or README.

On 12 November 2026, all ten locally supplied CSVs were compared with the Git blob hashes in upstream revision [`197d108`](https://github.com/vikashGiri27/HR-Analytics-end-to-end-project/tree/197d1081a261e0167a1002588de142ba5d6f44fd). All ten are exact matches. [Machine-readable evidence](validation/data-provenance.json) includes the Git and SHA256 hashes.

## Rights and privacy

No LICENSE file or declared repository license was found at that revision. Public availability does not establish redistribution rights. Consequently, raw CSVs, imported model caches and binary reports containing imported records are excluded here. No broad LICENSE is applied to the source data or this combined portfolio. Obtain appropriate permission from the source owner before reusing or redistributing the data.

The upstream documentation does not establish whether every record is synthetic. This portfolio therefore makes no claim that the data represents a real employer, nor that every field is fictitious. The original source has contact details, exact birth dates and candidate names. The analytic model excludes contact/address fields, exact birth dates and candidate names from its final imported columns, but contains employee names and HR facts when refreshed locally. Do not use this public reporting approach with private HR records.

Published screenshots show aggregate analytical views. The live link points to the owner's pre-existing public Power BI report. Its underlying data is governed by that existing publication; exclusion of CSVs from GitHub does not anonymize a separately published Power BI model.

## Analytical differences from the upstream presentation

This implementation was checked against the actual CSVs. Its common reporting cutoff is **30 June 2025**, with attendance ending **27 June 2025**. It does not adopt the upstream README's August date claim. Its period attrition denominator is exact average daily headcount; its retention measure follows the opening cohort. These differ from a simple lifetime exits/master-records ratio. Compare definitions and periods before comparing reported percentages.

The local report uses CSV → Power Query → Import semantic model → DAX → PBIR. MySQL and SQL belong to the upstream project and are not runtime dependencies of this implementation.
