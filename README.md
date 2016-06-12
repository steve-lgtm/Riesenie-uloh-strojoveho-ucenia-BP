# About

Šablóna pre písanie záverečných prác na TUKE. 

Pozor! Kódovanie všetkých dokumentov je nastavené na UTF-8!

Aktuálna verzia vychádza z oficiálnej verzie dostupnej aj na stránkach univerzitnej knižnice. Tá je však už nejaký čas neaktulizovaná, takže tento projekt je snahou o udržiavanie aktuálnej verzie tohto projektu v súčinnosti so študentami. Upozorňujem však, že táto verzia je silne vo vývoji a odporúčam sledovať kvôli zmenám aj Changelog.

# Install

Odporúčame nainštalovať balík [TeX Live](https://www.tug.org/texlive/). 

Ako editor odporúčame nainštalovať [TeX Studio](http://www.texstudio.org/) alebo [TeX Maker](http://www.xm1math.net/texmaker/)

Používatelia Fedory napíšu:

```bash
sudo dnf install texlive-cslatex texlive-hyphen-slovak latexmk texstudio texlive-engrec 
```

## Špeciálne balíčky

### algorithm2e

Balíček pre písanie zdrojových kódov.
Domovská stránka projektu: https://www.ctan.org/pkg/algorithm2e

```bash
sudo dnf install texlive-algorithm2e
```

### tikz-pgf

Balíček pre tvorbu grafiky. Príklady, z ktorých sa dá inšpirovať aj pre potreby vašej práce sa nachádzajú na adrese http://www.texample.net/tikz/examples/
Domovská stránka projektu: https://www.ctan.org/pkg/pgf


# Running

Z príkazového riadku napíšte

```bash
latexmk -pdf -bibtex -pvc -shell-escape thesis
```

vďaka čomu dôjde k vytvoreniu výsledného dokumentu vo formáte _PDF_, pričom nástroj sa neukončí, ale bude sledovať zmeny a pri každej zmene (uložení niektorého _.tex_ súboru) dôjde k opätovnému preloženiu.

Projekt si samozrejme môžete otvoriť v ktoromkoľvek _LaTeX_ editore alebo IDE, ako je napr. _TeX Studio_

# TODO

- upraviť šablonu tak, aby používala literatúru vo formáte BibTex
- rozčleniť prácu na viac častí (kapitol)
- urobiť ju univerzálnejšou (jednotný typ práce - bakalárska/diplomová/dizertačná)
- vložiť do práce odporúčania pre písanie záverečných prác KPI
- generovanie bibtex-u na zaklade isbn: http://www.ottobib.com/
- ukazat vsetky pouzivane formy citacii vratane online citacii
- ukazky stylov pre bibtex: https://verbosus.com/bibtex-style-examples.html
