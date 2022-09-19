SRC:=$(shell find . -type f -name '*.org' -print)
DST:=$(patsubst %.org,%.html,$(SRC))

all: $(DST)

%.html: %.org
	emacs $< -Q --batch -f org-html-export-to-html --kill

run: all
	php -S localhost:8080

.PHONY: run
