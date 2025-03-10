---
title: Home
layout: home
nav_order: 1
description: "Just the Docs is a responsive Jekyll theme with built-in search that is easily customizable and hosted on GitHub Pages."
permalink: /
---

<!-- [table]({% link docs/iei_table.md %}) -->
# Inborn Errors of Immunity (IEI)

This page is dedicated to the cleaning and improvement of data about the genetics/diagnosis of primary immunodeficiencies. 
We source this data from the International Union of Immunological Societies (IUIS) Inborn Errors of Immunity Committee (IEI) <https://iuis.org/committees/iei/> and add improvements.

## [--> Use the table here](/assets/iusis_iei_table_2025.html)

## Content

* The main publication can be found at: (pre-print stage)
* Download table:
* Webpage table:

## Cleaning process

We transform the raw IUIS IEI data into a searchable, human- and machine-readable table with enhanced functionality. Our cleaning process integrates links to OMIM, expanded HPO terms, and standardises gene names to HUGO symbols. Specifically, we:

- Measure the distribution of data across major categories and subcategories to ensure even representation for robust classification (see Figure `plot_patch2.pdf`).
- Remove extraneous whitespace and ambiguous characters to improve clarity.
- Merge multiple HPO columns into a single “HPO combined” field and expand these into individual HPO terms with corresponding definitions.
- Standardise gene names to single HUGO symbols (e.g. converting “CD40 (TNFRSF5)” to “CD40”) and split entries with multiple genes into separate rows.
- Streamline inheritance classifications for consistency.
- Recategorise free-text descriptions of cell and immunoglobulin counts into concise, uniform labels (e.g. “normal”, “low”, “borderline”, “defective”), with before-and-after label distributions illustrated in Figures `plot_patch1.pdf` and `plot_patch3.pdf`.

This comprehensive cleaning ensures the final IEI table is easy to navigate, supports advanced queries, and reliably links to external resources.

## Sources

### Latest version

* Latest publication 2025:
    - "Human inborn errors of immunity: 2024 Update on the classification from the International Union of Immunological Societies Expert Committee":  
      <https://wp-iuis.s3.eu-west-1.amazonaws.com/app/uploads/2025/01/08170257/IEI-Final-Update-of-2024-Report-Jan-2025.pdf>

### Older versions

* The 2022 edition can be found here:
    - <https://link.springer.com/article/10.1007/s10875-022-01289-3#data-availability>  
      Tangye, S.G., Al-Herz, W., Bousfiha, A. et al. Human Inborn Errors of Immunity: 2022 Update on the Classification from the International Union of Immunological Societies Expert Committee. *J Clin Immunol* (2022). https://doi.org/10.1007/s10875-022-01289-3
    - The direct download link for Supplementary file2 (XLSX 93 kb):  
      <https://static-content.springer.com/esm/art%3A10.1007%2Fs10875-022-01289-3/MediaObjects/10875_2022_1289_MOESM2_ESM.xlsx>.
* The 2020 edition can be found here:
    - <https://iuis.org/committees/iei/>
    - 2020 download link:  
      [Updated IEI classification table (December, 2019)](https://wp-iuis.s3.eu-west-1.amazonaws.com/app/uploads/2019/12/20113228/IUIS-IEI-list-for-web-site-December-2019-003.xlsx).

## License

This site is distributed by an [MIT license](https://github.com/just-the-docs/just-the-docs/tree/main/LICENSE.txt).


