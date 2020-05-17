#!/bin/bash
aspell -t -c progress.tex
pdflatex -output-directory=./aux progress.tex
echo "-----------------------------------------------"
bibtex aux/progress.aux
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  progress.tex
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  progress.tex
echo "-----------------------------------------------"

mv aux/progress.pdf .


