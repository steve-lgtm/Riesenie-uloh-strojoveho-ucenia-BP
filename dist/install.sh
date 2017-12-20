#!/bin/bash

# This script installs the packages, classes and styles in local TeX directory
# in OS Linux with TeX Live distribution.

TEXMFHOME=$(kpsewhich -var-value=TEXMFHOME)
mkdir -p $TEXMFHOME/tex/latex/tuke/
cp *.{sty,cls} $TEXMFHOME/tex/latex/tuke/

