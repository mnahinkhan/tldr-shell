all:
	./sh-to-md.sh
	./gen-index.sh

test:
	shellcheck *.sh

clean:
	./clean.sh

.PHONY: all test clean
