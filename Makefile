.PHONY: main clean FORCE

main: poster.pdf

poster.pdf: FORCE
	latexmk -pdflatex='lualatex -interaction nonstopmode' -pdf --shell-escape poster.tex

clean:
	latexmk -pdf -C
