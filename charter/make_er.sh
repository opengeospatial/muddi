#!/bin/sh
asciidoctor  $1.adoc
asciidoctor-pdf   -a pdf-stylesdir=resources -a pdf-style=ogc -a pdf-fontsdir=resources/fonts $1.adoc
asciidoctor  -a numbered -b docbook -d book -o $1.docbook $1.adoc
pandoc -s $1.docbook -f docbook -t rtf -s -o $1.rtf
