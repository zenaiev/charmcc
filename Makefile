#!/bin/bash
filename= "c_c-paper"

default:
	pdflatex ${filename}
	bibtex   ${filename}
	pdflatex ${filename}
	pdflatex ${filename}

clean:
	rm -rf *~ *.out *.toc *.log ${filename}.pdf *.aux *.blg *.bbl
