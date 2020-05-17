#!/bin/bash
aspell -t -c final.tex
pdflatex -output-directory=./aux final.tex
echo "-----------------------------------------------"
bibtex aux/final.aux
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  final.tex
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  final.tex
echo "-----------------------------------------------"

mv aux/final.pdf .


