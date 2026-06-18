MARKDOWN:=$(wildcard *.markdown)
MD:=$(wildcard *.md)
HTML:=$(patsubst %.markdown,%.html,$(MARKDOWN)) $(patsubst %.md,%.html,$(MD))
IMG:=$(wildcard *.jpg) $(wildcard *.png)
ZIP:=README.zip

.PHONY: all
all: $(HTML) $(ZIP)

%.html: %.markdown
	markdown $< > $@

%.html: %.md
	markdown $< > $@

README.zip : Makefile $(IMG) $(MARKDOWN) $(MD) $(HTML)
	zip --filesync --quiet "$@" $^

.PHONY: clean
clean:
	rm --force -- $(HTML) $(ZIP)
