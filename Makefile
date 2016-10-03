# set latexfile to the name of the main file without the .tex
latexfile = thesis

all:$(latexfile).pdf

.PHONY:clean

clean:
	rm *.pdf *.brf *.lof *.lot *.nlo *.gz *.toc *.out *.aux *.log

$(latexfile).pdf:$(latexfile).tex
	pdflatex $(latexfile)
	pdflatex $(latexfile)
	bibtex $(latexfile)
	pdflatex $(latexfile)
	pdflatex $(latexfile)

