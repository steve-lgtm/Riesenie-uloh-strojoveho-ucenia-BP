# About

Šablóna pre písanie záverečných prác na _KPI FEI TUKE_. 

Pozor! Kódovanie všetkých dokumentov je nastavené na _UTF-8_! Nezabudnite si preto nastaviť aj svoje prostredie, v ktorom budete záverečnú prácu písať tak, aby toto kódovanie používalo!

Aktuálna verzia vychádza z oficiálnej verzie dostupnej aj na stránkach univerzitnej knižnice. Tá je však už nejaký čas neaktulizovaná, takže tento projekt je snahou o udržiavanie aktuálnej verzie tohto projektu v súčinnosti so študentami. Upozorňujem však, že táto verzia je silne vo vývoji a odporúčam sledovať kvôli zmenám aj _changelog_.

## Install

Odporúčame nainštalovať balík [TeX Live](https://www.tug.org/texlive/). 

Ako editor odporúčame nainštalovať [TeX Studio](http://www.texstudio.org/) alebo [TeX Maker](http://www.xm1math.net/texmaker/).

Používatelia Fedory napíšu:

```bash
sudo dnf install texlive-collection-latexrecommended \
    texlive-collection-langczechslovak \
    texlive-biblatex texlive-biblatex-iso690 texlive-glossaries \
    latexmk texstudio
```

Používatelia Debianu a Ubuntu to majú podobné:

```bash
sudo apt-get install texlive-latex-extra texlive-fonts-recommended \
    texlive-lang-czechslovak texlive-bibtex-extra biber latexmk texstudio
```

## Compilation

Dokument vytvoríte napísaním nasledovného príkazu z príkazového riadku:

```bash
latexmk -pdf -bibtex -pvc thesis
```

Spustením tohto príkazu dôjde k vytvoreniu výsledného dokumentu vo formáte _PDF_, ktorý sa následne zobrazí v prehliadači dokumentov. Samotný nástroj sa ale neukončí a bude sledovať zmeny, pričom pri každej zmene (uložení niektorého _.tex_ súboru) dôjde k opätovnému preloženiu výsledného dokumentu.

Projekt si samozrejme môžete otvoriť v ktoromkoľvek _LaTeX_ editore alebo IDE, ako je napr. _TeX Studio_


Ak potrebujete vygenerovať zoznam skratiek, z príkazového riadku musíte spustiť postupne tieto tri príkazy:
```bash
latexmk -pdf -bibtex thesis
makeglossaries thesis
latexmk -pdf -bibtex -pvc thesis
```

V prípade, že zoznam aktualizujete a medzičasom ste už _PDF_ dokument vygenerovali, stačí spustiť už len príkaz `makeglossaries` a následne dokument pregenerovať.


## Update

Ak dôjde k aktualizácii šablóny, stačí vo vašom projekte aktualizovať len súbor `kithesis.cls`. Vždy sa však pozrite do súboru `CHANGELOG.md`, aby ste sa o aktualizácii uistili.


## Spell Checking

Ak náhodou na písanie nepoužívate nástroj, ktorý kontrolu pravopisu neobsahuje, môžete využiť nástroj `aspell` nasledujúcim spôsobom:

```bash
aspell -d sk_SK -t -c file.tex
```


## Troubleshooting

### Q1: Našiel som v šablóne chybu. Kde ju môžem reportovať?

Buď mailom na miroslav.binas@tuke.sk alebo priamo tu gitlab-e. Ideálne pomocou _merge request_-u.


### Q2: Číslovanie strán obsahu je rímskymi číslicami. Je to v poriadku?

Áno je to v poriadku. Práca používa dva štýly číslovania strán. Číslovanie rímskymi číslicami je v úvodnej časti práce (obsah a všetky zoznamy). Číslovanie zvyšku práce počínajúc od úvodu, resp. motivácie práce je číslované arabskými číslicami. Číslovanie druhej časti práce začína na strane s úvodom, resp. s motiváciou.


### Q3: Nezobrazuje sa mi obsah.

Skús prácu preložiť ešte raz. Je to vlastnosť _LaTeX_-u. Ak chceš mať aktuálny obsah, je nutné ho vždy preložiť 2x.


### Q4: V zozname literatúry mi zobrazuje len 3 záznamy aj napriek tomu, že ich mám viac.

Pre generovanie zoznamu literatúry sa používa _BibTeX_. Ten zobrazí len tie položky, ktoré v práci reálne citujete. Ak teda v práci realáne citujete len 3 dokumenty, budú v zozname literatúry zobrazené len tie.


## TODO

* ukážka príloh pre veci ako diagram tried riešenia, REST API, ...
