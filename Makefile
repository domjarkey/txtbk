QUARTO = quarto
BOOKS = slothful-apex avid-wanderlust luminous-quirk oblique-jubilee appendices
SITE_DIR = site

.PHONY: all books index clean $(BOOKS)

all: books index

books: $(BOOKS)

$(BOOKS):
	$(QUARTO) render books/$@

index:
	mkdir -p $(SITE_DIR)
	cp site-index.html $(SITE_DIR)/index.html

clean:
	rm -rf $(SITE_DIR)
