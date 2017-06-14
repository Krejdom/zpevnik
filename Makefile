all: zpevnik.pdf clean

PISNICKY=$(wildcard pisnicky/*.tex)

zpevnik.pdf: zpevnik.tex obsah.tex sablona.tex $(PISNICKY)
	pdflatex zpevnik

clean:
	rm -f *.aux *.log

.PHONY: clean all
