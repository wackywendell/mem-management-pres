.PHONY: presentation

ALL: index.html docs/mem-management.html

index.html: src/index.adoc
	docker run -it -v ${PWD}:/project asciidoctor/docker-asciidoctor asciidoctor-revealjs -a revealjsdir=../reveal.js /project/src/index.adoc -o /project/docs/index.html

docs/mem-management.html: src/mem-management.adoc
	docker run -it -v ${PWD}:/project asciidoctor/docker-asciidoctor asciidoctor-revealjs -a revealjsdir=../reveal.js /project/src/mem-management.adoc -o /project/docs/lifetimes.html