QUARTO = quarto

.PHONY: all html pdf clean

all: html pdf

html:
	$(QUARTO) render --to html --output-dir output

pdf:
	$(QUARTO) render --to pdf --output-dir output

clean:
	rm -rf output
