all:
	tools/process-table.sh
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm -f tableshort.tex tablelong.tex *.aux *.blg *.bbl *.log *.pdf
