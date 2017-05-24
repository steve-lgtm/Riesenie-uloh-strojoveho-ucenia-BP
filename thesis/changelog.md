# Change Log
All notable changes to this project will be documented in this file.

## [2017.5] - 2017-05-24
- v prípade, že vytvárate kapitolu bez číslovania, v záhlaví sa zobrazí len jej názov
- popisky (obrázkov, tabuliek) sú aktuálne o niečo menšie, aby boli odlíšiteľné od zvyšného textu
- pridany "magic" root komentar do suborov kapitol
- chyba v slovenskom texte (štúdijný -> študijný)
- zarovnanie cislovania stran vpravo v obsahu od 2. strany
- lepsie zalamovanie linkov v literature

## [2017.4] - 2017-04-25
- akceptovaný merge request od mateja 
    - hlavičky a päty stránok sú orientované vpravo, keďže záverečná práca je tlačená jednostranne a text je na pravej strane 
    - číslovanie stránok je aktuálne v päte a vždy vpravo
    - opravený problém s názvami príloh
- výška stránky sa kvôli číslovaniu zmenšila o 1cm


## [2017.3] - 2017-03-19
- zrušené zvýrazňovanie odkazov v šablóne
    - treba ešte zvážiť ich použitie možno spôsobom draft vs publisher ready verzia dokumentu


## [2017.2] - 2017-03-18
- opravený problém s číslovaním literatúry
    - v súbore thesis.tex došlo k prehodeniu riadkov pri umiestňovaní literatúry kvôli nesprávnej strane v obsahu. z pôvodného 
    ```latex
    \printbibliography[title={Literatúra}]
    \addcontentsline{toc}{chapter}{Literatúra}
    ```
    sa stalo
    ```latex
    \phantomsection
    \addcontentsline{toc}{chapter}{Literatúra}
    \printbibliography[title={Literatúra}]
    ```

## [2017.1] - 2017-01-17
- zrušený balík `parskip`
    - pridaný `\noindent` do čestného vyhlásenia 
    - zrušené odsadzovanie na titulných stranách
- oprava prostredia tabular na titulných stranách
    - na druhej strane už lícuje s okrajom
- vytvorený príkaz `\thesisspec{}` na zadanie cesty k zadaváciemu listu
    - ak nie je použitý, zobrazí sa na príslušnej stránke správa
    - ak je použitý, na príslušnom mieste sa vloží zadávací list
- zvacsena vyska hlavicky dokumentu

## [0.1.0] - 2015-10-19
### Changed
- Názov hlavného súboru bol premenovaný na `thesis.tex`, nakoľko adresuje ako diplomovú, tak aj bakalársku prácu
- Bol opravený problém so starým spôsobom použitia jazykovej verzie

### Added
- Bol pridaný súbor `README.md` so všobecnými informáciami o projekte a jeho používaní
- Bol pridaný súbor `CHANGELOG.md` s informáciami týkajúcimi sa zmien v projekte
