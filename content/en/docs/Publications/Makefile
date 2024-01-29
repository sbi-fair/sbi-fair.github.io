STYLE=acm-sig-proceedings.csl
STYLE=ieee.csl

all:
	pandoc -t markdown_strict --citeproc refs.tex --csl=${STYLE} -o refs.md.in --bibliography refs.bib
	cat _index.md.in refs.md.in > _index.md
