## kmx.io/sys
## Copyright 2022 kmx.io

all: os reed pfem

git: os

os:
	./os.kmx.io.adams

pfem:
	./pfem.kmx.io.adams

reed:
	./reed.kmx.io.adams

vulon:
	./vulon.kmx.io.adams

.PHONY: all git pfem reed vulon
