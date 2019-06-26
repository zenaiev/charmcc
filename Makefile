#!/bin/bash
# filename= "c_c-paper"
filename= "main"

default:
	pdflatex ${filename}
#	bibtex   ${filename}   # main.tex does not use bibitex
	pdflatex ${filename}
	pdflatex ${filename}

clean:
	rm -rf *~ *.out *.toc *.log ${filename}.pdf *.aux *.blg *.bbl
