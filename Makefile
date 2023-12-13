SRC:=$(shell find . -type f -name '*.org' -not -name 'common.org' -print)
DST:=$(patsubst %.org,%.html,$(SRC))
ifeq ($(shell uname),Darwin)
OPEN:=open
else
OPEN:=firefox
endif

all: $(DST)

%.html: %.org settings.el emacs-htmlize
	emacs $< -Q --batch --script settings.el -f org-html-export-to-html --kill

run: all
	$(OPEN) 'http://localhost:8080'
	php -S 'localhost:8080'

emacs-htmlize:
	git clone 'https://github.com/hniksic/emacs-htmlize.git'

.PHONY: run all
