# Makefile for wswsh - see LICENSE for copyright and license
# Ypnose - http://ywstd.fr

SOFT = wswsh
DEST = $${PWD}/dest

all: clean gen

clean:
	@echo Removing dest
	@rm -rf ${DEST}

gen:
	@./${SOFT} $${PWD}

purge: clean
	@echo Purging the config
	@rm -f wswsh.conf

wswsh.conf: wswsh.conf.default
	@echo Creating config from wswsh.conf.default
	@cp wswsh.conf.default wswsh.conf

.PHONY: all clean gen purge
