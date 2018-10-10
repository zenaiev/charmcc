default:
	pdflatex c_c-paper
	bibtex   c_c-paper
	pdflatex c_c-paper
	pdflatex c_c-paper

clean:
	rm -rf *~ *.out *.toc *.log c_c-paper.pdf *.aux *.blg *.bbl
