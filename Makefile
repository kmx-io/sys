## kmx.io/sys
## Copyright 2022 kmx.io

all: oaa vulon pfem bim os reed

ci: tci50 tci51 tci52 tci53 tca60 bim

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

tca60:
	./tca60.kmx.io.lisp

tci50:
	./tci50.kmx.io.lisp

tci51:
	./tci51.kmx.io.lisp

tci52:
	./tci52.kmx.io.lisp

tci53:
	./tci53.kmx.io.lisp

vulon:
	./vulon.kmx.io.lisp

.PHONY: all git pfem reed vulon
