TEX := $(wildcard *.tex)
PDF := $(TEX:.tex=.pdf)

LATEXMK = latexmk -norc -xelatex -f -verbose -file-line-error -synctex=1

.PHONY: all clean

all: $(PDF)

%.pdf: %.tex
	$(LATEXMK) $<

clean:
	rm -f *.aux *.fdb_latexmk *.fls *.log *.synctex.gz *.toc *.xdv *.pdf
