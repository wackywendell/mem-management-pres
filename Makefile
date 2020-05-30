.PHONY: presentation

presentation: html/lifetimes.html

html/lifetimes.html: src/lifetimes.adoc
	docker run -it -v ${PWD}:/project asciidoctor/docker-asciidoctor asciidoctor-revealjs -a revealjsdir=../reveal.js /project/src/lifetimes.adoc -o /project/html/lifetimes.html