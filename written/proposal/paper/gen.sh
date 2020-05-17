#!/bin/bash
aspell -t -c proposal.tex
pdflatex -output-directory=./aux proposal.tex
echo "-----------------------------------------------"
bibtex aux/proposal.aux
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  proposal.tex
echo "-----------------------------------------------"
pdflatex -output-directory=./aux  proposal.tex
echo "-----------------------------------------------"

mv aux/proposal.pdf .


