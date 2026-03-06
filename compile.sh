#!/bin/bash

TEXFILE="manuscript.tex"
SUPPTEXFILE="supplementary.tex"
BIBAUXFILE="manuscript.aux"
SUPPBIBAUXFILE="supplementary.aux"
PDFFILE="manuscript.pdf"
SUPPPDFFILE="supplementary.pdf"
PDFLOWFILE="manuscript_low_res.pdf"
SUPPPDFLOWFILE="supplementary_low_res.pdf"

pdflatex $TEXFILE
bibtex $BIBAUXFILE
pdflatex $TEXFILE
pdflatex $TEXFILE

#gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dNOPAUSE -dQUIET -dBATCH -dPrinted=false -sOutputFile=$PDFLOWFILE $PDFFILE

pdflatex $SUPPTEXFILE
bibtex $SUPPBIBAUXFILE
pdflatex $SUPPTEXFILE
pdflatex $SUPPTEXFILE

#gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dNOPAUSE -dQUIET -dBATCH -dPrinted=false -sOutputFile=$PDFLOWFILE $PDFFILE
