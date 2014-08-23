TARGET=scineghe
LATEX=pdflatex
BIBTEX=bibtex

all: $(TARGET).pdf

$(TARGET).pdf: *.tex

%.pdf: %.tex
	$(LATEX) $<
	$(BIBTEX) $*
	$(LATEX) $<
	$(LATEX) $<

make clean:
	- rm -f $(TARGET).pdf $(TARGET).aux $(TARGET).log $(TARGET).pdf $(TARGET).bbl $(TARGET).blg
