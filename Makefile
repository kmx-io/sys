
all: ams cf1 reed vu

ams:
	./ams.kmx.io.adams

cf:
	./cf.kmx.io.adams

cf1:
	./cf1.kmx.io.adams

oa:
	./oa.kmx.io.adams

reed:
	./reed.kmx.io.adams

ut:
	./ut.kmx.io.adams

vu:
	./vu.kmx.io.adams

.PHONY: all ams cf cf1 oa reed ut vu
