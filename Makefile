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

purge: wswsh.conf ${DEST}
	@echo Purging the config and dest
	@rm $<
	@rm -r ${DEST}

wswsh.conf: wswsh.conf.default
	@echo Creating config from $<
	@cp $< $@

.PHONY: all clean gen purge
