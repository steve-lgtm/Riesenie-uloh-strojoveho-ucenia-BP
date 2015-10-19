# About

Šablóna pre písanie záverečných prác na TUKE. 

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

```bash
sudo dnf install texlive-algorithm2e
```

### tikz-pgf

Balíček pre tvorbu grafiky. Príklady, z ktorých sa dá inšpirovať aj pre potreby vašej práce sa nachádzajú na adrese http://www.texample.net/tikz/examples/


# Running

Z príkazového riadku napíšte

```bash
latexmk -pdf thesis
```

alebo si projekt načítajte v prostredí _TeX Studia_
