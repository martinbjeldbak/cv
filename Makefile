root = MartinMadsenCV
compileoptions = -xelatex -use-make

.PHONY: $(root).pdf all clean

all: $(root).pdf

$(root).pdf: $(root).tex
	latexmk $(compileoptions) $(root)

watch: clean
	latexmk $(compileoptions) -pvc $(root)

clean:
	latexmk -bibtex -CA

view:
	open $(root).pdf
