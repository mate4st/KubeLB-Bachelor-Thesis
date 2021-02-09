# Bachelor Thesis

Run `pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out main.tex`

#### Bibliography 

`biber --input-directory=out main`


#### Dependencies

`sudo apt-get install pdflatex texlive-lang-german texlive-bibtex-extra biber`
