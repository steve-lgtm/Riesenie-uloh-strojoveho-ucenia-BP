# Installation Guide

Najjednoduchší spôsob, ako použiť pripravené balíčky, je prekopírovať príslušné súbory z tohto priečinku ku vášmu dokumentu. Ak však chcete nainštalovať balíčky do systému _LaTeX_, postupujte podľa nasledovného návodu:

1. Pomocou príkazu `kpsewhich` zistite umiestnenie vášho lokálneho _TeX_ domovského priečinku:

    ```bash
    kpsewhich -var-value=TEXMFHOME
    ```

    V závislosti od operačného systému sa môže toto umiestnenie líšiť, napr.:
    * v _OS Windows_ to môže byť priečinok `C:/Users/username/texmf/`
    * v _OS Linux_ to môže byť priečinok `~/texmf/`

2. Vo vašom lokálnom _TeX_ priečinku vytvorte nasledovnú štruktúru podpriečinkov:
    `~/texmf/tex/latex/tuke/`

3. Do priečinku `~/texmf/tex/latex/tuke/` prekopírujte všetky súbory s príponami `.sty` a `.cls`

4. Dostupnosť balíka si môžete overiť príkazom
    ```bash
    kpsewhich kithesis.sty
    ```

    Cesta, ktorú príkaz vráti, by mala viesť práve do lokálneho _TeX_ priečinka.


## References

* https://tex.stackexchange.com/questions/1137/where-do-i-place-my-own-sty-or-cls-files-to-make-them-available-to-all-my-te
