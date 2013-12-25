markdown-demo.html: markdown-demo.markdown
	markdown markdown-demo.markdown > markdown-demo.html
markdown-demo.zip : markdown-demo.markdown markdown-demo.html
	zip --update markdown-demo.zip markdown-demo.html markdown-demo.markdown
