.PHONY: clean

all: docs/index.html docs/mem-management.html

clean:
	rm -f docs/*.html

docs/index.html: src/index.adoc
	docker run -it -v ${PWD}:/project asciidoctor/docker-asciidoctor asciidoctor /project/$< -o /project/$@


docs/%.html: src/%.adoc
	docker run -it -v ${PWD}:/project asciidoctor/docker-asciidoctor asciidoctor-revealjs -a revealjsdir=./reveal.js /project/$< -o /project/$@
