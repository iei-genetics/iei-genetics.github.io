---
layout: default
title: Definitions
nav_order: 5
---

# Definitions

Last update: 20250329

All data is available in the downloadable table including those marked as hidden.

---

### Major category
- **Description:** A high-level classification that groups genes based on their overall role in immune function or disease.
- **Notes:** Uses a custom mapping (`major_map`) to convert source categories into standardised group names.

### Subcategory
- **Description:** A more detailed classification within the major category, providing finer granularity about the gene's role in immunity or disease.

### Disease
- **Description:** Indicates the type or classification of disease associated with the gene, reflecting the clinical context.

### Genetic defect
- **Description:** Identifies the gene or specific genetic variant responsible for the condition.
- **Interaction:** Typically links to external databases (e.g. ClinVar, OMIM) for more detailed information.

### Inheritance
- **Description:** The mode of inheritance for the condition associated with the gene.
- **Possible Values:**  
  - **AD:** Autosomal Dominant  
  - **AR:** Autosomal Recessive  
  - **XL / XLR:** X-linked (Recessive)  
  - **AD/AR:** Combination of autosomal dominant and recessive patterns  
  - **Sporadic:** Non-familial or toxin-induced cases
- **Visual Cues:** Displayed with colour coding to distinguish between different modes.

### ICD9
- **Description:** International Classification of Diseases, Ninth Revision code.

### ICD10
- **Description:** International Classification of Diseases, Tenth Revision code.

### OMIM ID
- **Description:** The Online Mendelian Inheritance in Man identifier, providing access to detailed genetic disorder information.

### HPO IDs
- **Description:** Combined Human Phenotype Ontology identifiers relevant to the gene.

### HPO term
- **Description:** Specific Human Phenotype Ontology term describing a clinical feature.

### Associated features
- **Description:** Other clinical or phenotypic features associated with the disease.

### Uniprot
- **Description:** The UniProt accession ID for the gene’s protein, with a link to protein structure and function data (e.g. from AlphaFold or Alpha Missense).

### AlphaFold_URL (hidden)
- **Description:** A URL linking to the AlphaFold database entry. This provides access to variant and protein structure predictions for the gene.

### score_positive_total
- **Description:** The overall gene score computed from ClinVar variant reports.
- **Calculation:** Sums the scores from variants considered pathogenic or likely pathogenic (ignoring incidental benign variants).
- **Interpretation:** A higher score indicates a greater burden of pathogenic variants.

### probabilities
- **Description:** A sparkline boxplot summarising the distribution of the –log10(prior probability) for pathogenic variants for each gene. See the Variant Risk Estimate for detailed calculations.
- **Visualisation:** Uses the pre-calculated minimum, first quartile, median, third quartile, and maximum values to provide a compact view of the probability distribution.
- **Usage:** Helps assess how common a candidate pathogenic variant might be in patients.

### VariantCounts.VRE
- **Description:** A visual summary of ClinVar single nucleotide variant (SNV) classifications for the gene. See the Variant Risk Estimate for detailed calculations.
- **Visualisation:** Displayed as a sparkline bar chart with:
  - **Red:** Variants with score **5** (Pathogenic)
  - **Orange:** Variants with score **2-4** (Likely pathogenic)
  - **Light blue:** Variants with score **1-2** (Uncertain/conflicting)
  - **Dark blue:** Variants with score **0** (Benign)
- **Interaction:** Clicking the chart links to a ClinVar search for more details.

### VariantCounts.ClnVar
- **Description:** A composite visual summary of all ClinVar variant reports for the gene. This data is the "raw" version directly from ClinVar which contains many overlapping descriptions for single variants, transcripts, or genes.
- **Visualisation:** Displayed as a sparkline bar chart with:
  - **Red:** Variants with score **5** (Pathogenic)
  - **Orange:** Variants with score **3-4** (Likely pathogenic)
  - **Light blue:** Variants with score **1-2** (Uncertain/conflicting)
  - **Dark blue:** Variants with score **0** (Benign)
- **Interaction:** Clicking the chart links to a ClinVar search for the gene.

### B cell
- **Description:** Status of B cell counts (e.g. normal, low, decreased, immature).

### T cell
- **Description:** Status of T cell counts (e.g. low, normal, high, defective).

### Ig
- **Description:** Immunoglobulin (Ig) levels or status.

### Neutrophil
- **Description:** Neutrophil count status.

### Inheritance detail
- **Description:** Further detailed description of the mode of inheritance.

### Major_category_original (hidden)
- **Description:** The original category label as provided in the source data before any recoding or mapping.

### GOF/DN details
- **Description:** Details on gain-of-function or dominant-negative effects observed for the gene, as per the orginal IUIS IEI source.

### T cell details
- **Description:** Extra details regarding T cell abnormalities, as per the orginal IUIS IEI source.

### B cell details
- **Description:** Extra details regarding B cell abnormalities, as per the orginal IUIS IEI source.

### Ig details
- **Description:** Additional information regarding immunoglobulin levels, as per the orginal IUIS IEI source.

### Neutrophil details
- **Description:** Additional details regarding neutrophil counts, as per the orginal IUIS IEI source.

### Other affected cells
- **Description:** Other immune or non-immune cells that may be impacted, as per the orginal IUIS IEI source.

### score5.ClnVar (hidden)
- **Description:** Count of ClinVar variant reports with a score of **5** (Pathogenic).

### score4.ClnVar (hidden)
- **Description:** Count of ClinVar variant reports with a score of **3-4** (Likely pathogenic).

### score2.ClnVar (hidden)
- **Description:** Count of ClinVar variant reports with a score of **1-2** (typically representing uncertain or conflicting classifications).

### score0.ClnVar (hidden)
- **Description:** Count of ClinVar variant reports with a score of **0** (representing benign variants with scores in the range -5 to -1).

### score5.VRE (hidden)
- **Description:** Count of SNVs (single nucleotide variants) with a score of **5** (Pathogenic) as per the Variant Risk Estimation.

### score4.VRE (hidden)
- **Description:** Count of SNVs with a score of **2-4** (Likely pathogenic) as per the Variant Risk Estimation.

### score2.VRE (hidden)
- **Description:** Count of SNVs with a score of **1-2** (Uncertain or conflicting) as per the Variant Risk Estimation.

### score0.VRE (hidden)
- **Description:** Count of SNVs with a score of **0** (Benign) as per the Variant Risk Estimation.

### min_prob (hidden)
- **Description:** The minimum prior probability (–log10) observed for the gene.

### median_prob (hidden)
- **Description:** The median prior probability (–log10) observed for the gene.

### max_prob (hidden)
- **Description:** The maximum prior probability (–log10) observed for the gene.

