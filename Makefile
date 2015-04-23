epeg:
	gcc -o epeg -lexif -ljpeg -I src/lib src/bin/epeg_main.c src/lib/epeg_main.c

test: epeg
	./epeg --inset --max=100,100 test/tarsier.jpg test/tarsier-thumb.jpg

.PHONY: epeg test