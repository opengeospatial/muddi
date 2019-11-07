#!/bin/sh
asciidoctor -r asciidoctor-bibtex er.adoc
asciidoctor-pdf  -r asciidoctor-bibtex -a pdf-stylesdir=resources -a pdf-style=ogc -a pdf-fontsdir=resources/fonts er.adoc
#asciidoctor  -r asciidoctor-bibtex -a toc -a numbered -b docbook -d book -o er.docbook er.adoc
# pandoc -s --toc er.docbook -f docbook -t rtf -s -o er.rtf
