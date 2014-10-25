# Makefile for wswsh - see LICENSE for copyright and license
# Ypnose - http://ypnose.org

SOFT = wswsh
DEST = ${PWD}/dest

all: clean gen

wswsh.conf:
	@echo Creating config from wswsh.conf.default
	@cp wswsh.conf.default $@

clean:
	@echo Removing dest
	@rm -rf ${DEST}

gen:
	@./${SOFT} ${PWD}

purge: wswsh.conf ${DEST}
	@echo Purging the config and dest
	@rm wswsh.conf
	@rm -r ${DEST}

.PHONY: all clean gen purge
