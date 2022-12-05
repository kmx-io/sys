## kmx.io/sys
## Copyright 2022 kmx.io

all: os reed pfem vulon oaa

git: os

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
