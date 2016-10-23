# Manual for Writing Thesis

Tento priečinok obsahuje dokument, ktorý je manuálom pre používanie šablóny na písanie záverečných prác.

## Install

Pokiaľ si chete výsledný dokument tohto manuálu vygenerovať sami, budete potrebovať nainštalovať niekoľko ďalších balíčkov a ich závislostí:

* `texlive-titlesec`
* `texlive-biblatex`
* `texlive-glossaries`
* `texlive-blindtext`
* `texlive-units`
* `texlive-rotating`
* `biber`


## Running

Z príkazového riadku napíšte

```bash
latexmk -pdf -bibtex -pvc -shell-escape thesis-manual
```

vďaka čomu dôjde k vytvoreniu výsledného dokumentu vo formáte _PDF_. Nástroj sa neukončí, ale bude sledovať zmeny a pri každej zmene (uložení niektorého _.tex_ súboru) dôjde k opätovnému preloženiu.
