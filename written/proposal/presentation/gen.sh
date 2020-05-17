#!/bin/bash
aspell -t -c presentation.tex
pdflatex -output-directory=./aux presentation.tex
echo "-----------------------------------------------"
bibtex aux/presentation.aux
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  presentation.tex
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  presentation.tex
echo "-----------------------------------------------"

mv aux/presentation.pdf .


