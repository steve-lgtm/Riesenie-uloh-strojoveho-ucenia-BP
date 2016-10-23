# About

Šablóna pre písanie záverečných prác na _KI FEI TUKE_. 

Pozor! Kódovanie všetkých dokumentov je nastavené na _UTF-8_! Nezabudnite si preto nastaviť aj svoje prostredie, v ktorom budete záverečnú prácu písať tak, aby toto kódovanie používalo!

Aktuálna verzia vychádza z oficiálnej verzie dostupnej aj na stránkach univerzitnej knižnice. Tá je však už nejaký čas neaktulizovaná, takže tento projekt je snahou o udržiavanie aktuálnej verzie tohto projektu v súčinnosti so študentami. Upozorňujem však, že táto verzia je silne vo vývoji a odporúčam sledovať kvôli zmenám aj _changelog_.

# Install

Odporúčame nainštalovať balík [TeX Live](https://www.tug.org/texlive/). 

Ako editor odporúčame nainštalovať [TeX Studio](http://www.texstudio.org/) alebo [TeX Maker](http://www.xm1math.net/texmaker/).

Používatelia Fedory napíšu:

```bash
sudo dnf install texlive-cslatex texlive-hyphen-slovak latexmk texstudio texlive-engrec 
```

## Additional Packages

* `csquotes`

# Running

Z príkazového riadku napíšte

```bash
latexmk -pdf -bibtex -pvc -shell-escape thesis
```

vďaka čomu dôjde k vytvoreniu výsledného dokumentu vo formáte _PDF_, pričom nástroj sa neukončí, ale bude sledovať zmeny a pri každej zmene (uložení niektorého _.tex_ súboru) dôjde k opätovnému preloženiu.

Projekt si samozrejme môžete otvoriť v ktoromkoľvek _LaTeX_ editore alebo IDE, ako je napr. _TeX Studio_

# Troubleshooting

## Q1: Našiel som v šablóne chybu. Kde ju môžem reportovať?

Buď mailom na miroslav.binas@tuke.sk alebo priamo tu gitlab-e.

# TODO

- vložiť do práce odporúčania pre písanie záverečných prác KPI
- generovanie bibtex-u na zaklade isbn: http://www.ottobib.com/
- ukazat vsetky pouzivane formy citacii vratane online citacii
- ukazky stylov pre bibtex: https://verbosus.com/bibtex-style-examples.html
