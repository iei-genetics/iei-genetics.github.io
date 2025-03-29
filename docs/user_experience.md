---
layout: default
title: User experience
nav_order: 5
---

# User experience

Last update: 20250329

Making a user-friendly experience is challenging when working with large genomic datasets. 
To reduce the browser's rendering load, we pre-calculate summary statistics server-side. 

For example, we use score mapping to convert clinical significance terms into numeric scores. This process distils complex information into the most critical insights, such as the total count of pathogenicity-related classifications, while filtering out incidental benign variants that may not be immediately useful to the user. 

However, we recognise that benign incidental variants can also inform the prior odds of false positives. To address this, we summarise both pathogenic and benign classifications and combine multiple visual summaries, like stacked bar charts and classification counts, into a responsive layout that provides quick insights without compromising performance. 

Another key metric is the "Prior probability of observing pathogenic", which displays the -log10 probability of encountering a patient with candidate causal pathogenic variants matching the disease mode of inheritance. This simple plot might require hundreds of probabilites for each gene.
Therefore, we calculate key quantiles (min, Q1, median, Q3, max) of the variant probability distribution for each gene, merging these values into our main dataframe. This approach enables each row of our responsive table to render a compact sparkline box plot that summarises the distribution without burdening the browser with processing large datasets in real time.

Creating URLs that link to source databases is a feature that empowers users to easily access detailed external information. We achieve this by dynamically generating hyperlinks within our reactable columns using functions like sprintf and htmltools tags. For example, when rendering the ClinVar variant counts, the code constructs a URL that directs the user to the ClinVar website by embedding the relevant gene identifier into the query parameters. Similar approaches are used for other databases such as OMIM and AlphaFold, where the displayed value is turned into a clickable link that leads directly to the source entry. This method ensures that the links are always in sync with the underlying data, providing users with immediate access to comprehensive, authoritative information while keeping the table interface compact and user-friendly.
