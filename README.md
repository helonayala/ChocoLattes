## ChocoLattes package
[![Build Status](https://api.travis-ci.org/fcampelo/ChocoLattes.png)](https://travis-ci.org/fcampelo/ChocoLattes)[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/ChocoLattes)](https://CRAN.R-project.org/package=ChocoLattes)
[![CRAN Downloads](https://cranlogs.r-pkg.org/badges/ChocoLattes)](https://CRAN.R-project.org/package=ChocoLattes)


[Felipe Campelo](mailto:fcampelo@ufmg.br)  
Operations Research and Complex Systems Laboratory - ORCS Lab
Universidade Federal de Minas Gerais
Belo Horizonte, Brazil

***

**R** package for extracting and summarising information from the [Lattes database of Brazilian Researchers](http://lattes.cnpq.br).

This package currently exports four methods:

- *lattes_to_list(...)* - extracts information from a Lattes CV xml file (or a list of xml files, or a folder full of xml files) and structures everything in a neat list vector, taking care of duplicates (using DOI and title for papers, and ISSN and title for books) and formatting author names. It currently extracts info on journal papers (accepted or published), conference papers, book chapters, books, PhD theses and MSc dissertations.
- *make_productions_page(...)* - builds a neat HTML page with the productions of the researcher (or lab, or department), based on the list produced by *lattes_to_list(...)*
- *plot_chart* produces a summary chart of productions, based on the list produced by *lattes_to_list(...)*
- *extract_qualis* generates an Excel (or CSV) file containing the production summary of the researcher (or lab, or department), based on the list produced by *lattes_to_list(...)* and on a certain [QUALIS extract](http://qualis.capes.gov.br/)

***
Example:

1. Download example file (_curriculo.xml_) from [here](http://buscatextual.cnpq.br/buscatextual/download.do?metodo=apresentar&idcnpq=6799982843395323), and save it to your current working folder.

2. Convert it to a Lattes list:

```
library(ChocoLattes) # <-- assuming it is installed, of course
lattes.list <- lattes_to_list(CV.dir = getwd())
```

3. Build a productions chart

```
a <- plot_chart(lattes.list = lattes.list, 
                chart.type  = "ggplot2", 
                language = "PT")
print(a)
```

or a full productions page:

```
make_productions_page(lattes.list = lattes.list,
                      chart.type  = "ggplot2",
                      h1.title    = "ORCS Lab",
                      h2.title    = "UFMG, Brazil",
                      language    = "EN")
```

Have fun!!!  
Felipe



# fork changes

All credits to Felipe Campelo who kindly made available this very useful set of R script to calculate scientific production

a few tweaks have been made here to plot the publications according to the Qualis classification

specifically I changed a little bit 
- set_qualis (on the basis of https://github.com/fcampelo/PPGEECred , also from Felipe Campelo - all credits to him)
- the output html file (2 graphs, 1 according to qualis )

attached there is 1 CV in the data/ folder (the script will look for all cvs there, so just dump all cvs in data folder if there's more than one)

in order to generate the report run `hello.R` in `examples/`. the file `prod_page.html` is the expected output

the qualis classification can be obtained from qualis capes (dump in the data folder too the csv file. in this repo we have Eng. III - 2013-2016)

*this fork contains only minor tweaks. almost all of the work is from Felipe, so once more, all credits and gratitude to him*

