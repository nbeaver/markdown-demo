all: README.html README.zip 

README.html : README.markdown Makefile
	markdown README.markdown > README.html
README.zip : README.markdown README.html Makefile
	zip --update README.zip README.html README.markdown

clean:
	rm --force README.html
	rm --force README.zip
