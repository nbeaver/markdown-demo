MARKDOWN:=$(wildcard *.markdown)
MD:=$(wildcard *.md)
HTML:=$(patsubst %.markdown,%.html,$(MARKDOWN)) $(patsubst %.md,%.html,$(MD))
IMG:=$(wildcard *.jpg) $(wildcard *.png)
ZIP:=readme.zip

.PHONY: all
all: $(HTML) $(ZIP)

%.html: %.markdown
	markdown $< > $@

%.html: %.md
	markdown $< > $@

$(ZIP) : Makefile $(IMG) $(MARKDOWN) $(MD) $(HTML)
	zip --filesync --quiet "$@" $^

.PHONY: clean
clean:
	rm --force -- $(HTML) $(ZIP)
