.PHONY: preview render clean

clean:
	rm -rf .quarto output template_files *.tex *.log *.toc *.lof *.aux
preview: clean
	quarto preview *.qmd
render: clean
	quarto render *.qmd --to pdf