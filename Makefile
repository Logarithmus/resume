DEPS:= resume.cls
DATE= $(shell date --iso)
OUTDIR=build

# Environment variables
TEXINPUTS:= .:fontawesome5:$(TEXINPUTS)

all: en

en: resume-en.pdf

clean:
	rm -rf $(OUTDIR)

resume-%.pdf: resume-%.tex $(DEPS) clean
	env TEXINPUTS=$(TEXINPUTS) latexmk -xelatex -outdir=$(OUTDIR) $<

.PHONY: all en clean
