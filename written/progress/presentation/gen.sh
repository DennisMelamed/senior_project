#!/bin/bash
aspell -t -c progress_presentation.tex
pdflatex -output-directory=./aux progress_presentation.tex
echo "-----------------------------------------------"
bibtex aux/progress_presentation.aux
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  progress_presentation.tex
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  progress_presentation.tex
echo "-----------------------------------------------"

mv aux/progress_presentation.pdf .


