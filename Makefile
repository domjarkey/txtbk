QUARTO = quarto

.PHONY: all html pdf clean

all: html pdf

html:
	$(QUARTO) render --to html --output-dir html_book

pdf:
	$(QUARTO) render --to pdf --output-dir pdf_book

clean:
	rm -rf html_book pdf_book
