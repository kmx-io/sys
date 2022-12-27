## kmx.io/sys
## Copyright 2022 kmx.io

all: oaa vulon pfem bim os reed

git: os bim

bim:
	./bim.kmx.io.lisp

oaa:
	./oaa.kmx.io.lisp

os:
	./os.kmx.io.lisp

pfem:
	./pfem.kmx.io.lisp

reed:
	./reed.kmx.io.lisp

vulon:
	./vulon.kmx.io.lisp

.PHONY: all git pfem reed vulon
