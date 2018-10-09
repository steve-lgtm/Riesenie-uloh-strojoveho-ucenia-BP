#!/usr/bin/env bash

# This script installs the packages, classes and styles in local TeX directory
# in OS Linux with TeX Live distribution.

TEXMFHOME=$(kpsewhich -var-value=TEXMFHOME)
echo "TEXMFHOME is located in ${TEXMFHOME}."
echo "Making directories and copying files..."

mkdir -p $TEXMFHOME/tex/latex/tuke/
cp *.{sty,cls} $TEXMFHOME/tex/latex/tuke/

echo "Done"
