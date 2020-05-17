#!/bin/bash
aspell -t -c final_presentation.tex
pdflatex -output-directory=./aux final_presentation.tex
echo "-----------------------------------------------"
bibtex aux/final_presentation.aux
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  final_presentation.tex
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  final_presentation.tex
echo "-----------------------------------------------"

mv aux/final_presentation.pdf .


