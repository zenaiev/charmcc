#!/bin/bash
#LATEX    = lualatex
#LATEX    = latex
LATEX    = latexmk  # J.C.Collins version; auto runs correc # of times
BIBTEX   = bibtex
DVIPS    = dvips

FILE= "main"

all: default 

default:
	$(LATEX) -pdf $(FILE)
#
#	bibtex   ${FILE}   # ALL DONE AUTOMATICALLY WIHT latexmk
#	pdflatex ${FILE}   # ALL DONE AUTOMATICALLY WIHT latexmk
#	pdflatex ${FILE}   # ALL DONE AUTOMATICALLY WIHT latexmk

clean:
	rm -rfv *~ *.out *.toc *.log *.aux *.blg *.bbl
#	rm -rfv *~ *.out *.toc *.log *.aux *.blg *.bbl ${FILE}.pdf
