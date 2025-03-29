---
title: Home
layout: home
nav_order: 1
description: "Diagnosing Immunodeficiency with genomic data."
permalink: /
---

[![IEI Genetics Logo](/assets/images/iei_genetics.png)](/assets/iusis_iei_table_2025.html)


<!-- [table]({% link docs/iei_table.md %}) -->
# Diagnosing Immunodeficiency

Explore the enhanced, searchable Inborn Errors of Immunity (IEI) diagnosis table. 
Built on the latest IUIS classification, this resource details phenotypes, variant classifications, and more to support clinical review and research into primary immunodeficiencies (PID).
Our knowledge base integrates genetic data from OMIM, HPO, ClinVar, gnomAD, and other leading sources, designed to help clinicians and researchers navigate the expanding landscape of immunodeficiency diagnosis.

## [**Explore the Enhanced IEI Table »**](/assets/iusis_iei_table_2025.html)

## Content

* The main publication can be found at: (pre-print stage)
* Download table TSV: [Download clean_iusis_iei_table_2025.tsv](https://raw.githubusercontent.com/DylanLawless/iei_genetics/main/output/iusis_iei_table_2025.tsv)
* Online table: [Enhanced IEI Table](/assets/iusis_iei_table_2025.html)


## Developement pages

<ul>
  {% assign docs = site.pages | sort: 'nav_order' %}
  {% for page in docs %}
    {% if page.nav_order and page.layout == "default" %}
      <li><a href="{{ page.url }}">{{ page.title }}</a></li>
    {% endif %}
  {% endfor %}
</ul>

## License

This site is distributed by an [MIT license](https://github.com/iei-genetics/iei-genetics.github.io/blob/master/LICENSE.txt).


