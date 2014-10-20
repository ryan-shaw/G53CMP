# Makefile for the G52CMP coursework description.

.PHONY: all ps pdf bib clean

target = cw-partI-2014

sources = \
    ${target}.tex \
    defs.tex

all: ${target}.dvi

ps: ${target}.ps

${target}.ps: ${target}.dvi
	dvips -t a4 -Pcmz -o ${target}.ps ${target}.dvi

pdf: ${target}.pdf

${target}.pdf: ${target}.ps
	ps2pdf ${target}.ps ${target}.pdf

${target}.dvi: ${sources} *.tex
	latex ${target}
#	bibtex ${target}
	latex ${target}
#	latex ${target}

bib:
	rm -rf *.bbl *.blg
	bibtex fhm

# Diagrams: FORCE
#	cd $@ && $(MAKE) all

clean:
	rm -rf ${target}.ps ${target}.pdf ${target}.dvi *.aux *.dvi *.inx \
           *.log *.bbl *.blg *~
#	NO! Cannot generate all files in Diagrams!
#	cd Diagrams && $(MAKE) clean

FORCE:
