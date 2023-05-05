all: main.pdf

SOURCES =  \
  community.tex \
  data_services.tex \
  discretization.tex \
  framework.tex \
  introduction.tex \
  linear_solvers.tex \
  main.tex \
  nonlinear_solvers.tex

main.pdf: ${SOURCES} bibliography.bib
	pdflatex main; bibtex main; pdflatex main; pdflatex main

clean:
	rm -f *.aux *.bbl *.blg *.log main.pdf main.out comment.cut

