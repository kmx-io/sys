
all: reed vu pfem

git: vu pfem reed

mbp:
	./mbp.kmx.io.adams

otter:
	./otter.kmx.io.adams

pfem:
	./pfem.kmx.io.adams

reed:
	./reed.kmx.io.adams

t410:
	./t410.kmx.io.adams

t60:
	./t60.kmx.io.adams

vu:
	./vu.kmx.io.adams

.PHONY: all git mbp otter pfem reed t410 t60 vu
