# Makefile for wswsh - see LICENSE for copyright and license
# 2013, 2014 - Ypnose - http://ypnose.org

SOFT = wswsh
DEST = ${PWD}/dest

all: gen

wswsh.conf:
	@echo creating config from wswsh.conf.default
	@cp wswsh.conf.default $@

clean: ${DEST}
	@echo removing dest
	@rm -r ${DEST}

gen:
	@./${SOFT} ${PWD}

regen: clean gen

generate: gen

purge: wswsh.conf ${DEST}
	@echo purging the config and dest
	@rm wswsh.conf
	@rm -r ${DEST}

.PHONY: all clean gen regen generate purge
