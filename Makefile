all:
	latex resume
	pdflatex resume

view: all
	xdg-open resume.pdf

check:
	aspell -c resume.tex

clean:
	rm -f resume.aux
	rm -f resume.bbl
	rm -f resume.blg
	rm -f resume.dvi
	rm -f resume.log
	rm -f resume.toc
	rm -f resume.tex.bak

clean_all: clean
	rm -f resume.pdf
