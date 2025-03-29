---
layout: default
title: Data cleaning
nav_order: 5
---

# Data cleaning

Last update: 20250329

## IUIS IEI

We transform the raw IUIS IEI data into a searchable, human- and machine-readable table with enhanced functionality.
Our cleaning process integrates links to OMIM, expanded HPO terms, and standardises gene names to HUGO symbols. Most of the steps are simple, subjective decisions. For instance, we:

- Measure the distribution of data across major categories and subcategories to ensure even representation for robust classification (see Figure `plot_patch2.pdf`).
- Remove extraneous whitespace and ambiguous characters to improve clarity.
- Replace Greek letter like "alpha" with their Latin equivalent "a" so that users can search for IFNa.
- Merge multiple HPO columns into a single "HPO combined" field and expand these into individual HPO terms with corresponding definitions.
- Standardise gene names to single HUGO symbols (e.g. converting "CD40 (TNFRSF5)" to "CD40") and split entries with multiple genes into separate rows.
- Streamline inheritance classifications for consistency (e.g. AD, AR, XL).
- Recategorise free-text descriptions of cell and immunoglobulin counts into concise, uniform labels (e.g. normal, low, borderline, defective), with before-and-after label distributions illustrated visualised to interpret their new representation `plot_patch1.pdf` and `plot_patch3.pdf`.

The cleaning process aims produce a final IEI table is easy to navigate, supports advanced queries, and reliably links to external resources and that is analysis-ready for statistics and ML/AI.
We retains the original IUIS IEI data columns so that they can always be traced back for reuse on the future IUIS IEI releases.
We offer the final results as a TSV format download, that preserves the original data, avoiding issues like [Excel automatically converting gene names into dates](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-5-80).

## Knowledge base

For details on the preparation of the knowledge base, see:
Quantifying the Genetics of Disease Inheritance in Primary Immunodeficiency.

Our cleaning process begins by importing raw genomic data from gnomAD and ClinVar for the entire human genome. 
Using a HPC cluster, we read compressed files in chunks for each chromosome (1–22, X, Y, and M), standardise the headers, and select key data such as gene name, allele frequencies, allele counts, ClinVar classifications, and transcript annotations.
We deal with numerous data cleaning requirements such as missing values in allele frequencies or ClinVar classifications, or selecting which gene transcript allele to retained.
Next, we merge these cleaned chunks into a complete dataset and integrate gene panel data from PanelAppRex, which provides inheritance models for every gene.
This integration allows us to calculate variant occurrence probabilities, expected case counts, and the probability of observing at least one case in a given population size; crucial metrics for downstream analysis. 
A subtle but essential step is the assignment of a minimal synthetic risk to variants with zero observed frequency, ensuring every gene has a non-zero risk estimate. 
The entire process is repeated for every disease-gene panel to generate disease-variant probabilities across all scenarios, with the full pipeline executing in under one day on our HPC system.
