QUARTO = quarto

.PHONY: all html pdf clean

all: html pdf

html:
	$(QUARTO) render --to html

pdf:
	$(QUARTO) render --to pdf

clean:
	rm -rf output
