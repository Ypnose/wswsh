# 2013 - wswsh - Ypnose <linuxien[AT]legtux[DOT]org
# Makefile for wswsh - see LICENSE for copyright and license

SOFT = wswsh
VERSION = 1.1
PREFIX = ${HOME}/Repos/Wswsh
DESTPREFIX = ${PREFIX}/dest

all: options gen

options:
	@echo ${SOFT} ${VERSION} build options:
	@echo "PREFIX  = ${PREFIX}"

wswsh.conf:
	@echo creating config from wswsh.conf.default
	@cp wswsh.conf.default $@

clean: ${DESTPREFIX}
	@echo removing dest
	@rm -r ${DESTPREFIX}

gen:
	@./wswsh ${PREFIX}

regen: clean gen

generate: gen

purge: wswsh.conf ${DESTPREFIX}
	@echo purging the config and dest
	@rm wswsh.conf
	@rm -r ${DESTPREFIX}

.PHONY: all options clean gen regen generate purge
