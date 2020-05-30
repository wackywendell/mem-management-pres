.PHONY: presentation

presentation: docs/mem-management.html

docs/mem-management.html: src/mem-management.adoc
	docker run -it -v ${PWD}:/project asciidoctor/docker-asciidoctor asciidoctor-revealjs -a revealjsdir=../reveal.js /project/src/mem-management.adoc -o /project/docs/lifetimes.html