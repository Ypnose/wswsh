# 2013 - wswsh - Ypnose <linuxien[AT]legtux[DOT]org
# Makefile for wswsh - see LICENSE for copyright and license
# If you modified $DEST in wswsh.conf, you should probably hack this Makefile.

SOFT     = wswsh
PREFIX   = ${HOME}/Repos/Wswsh
DEST     = ${PREFIX}/dest

all: gen

options:
	@echo ${SOFT} build options:
	@echo "PREFIX  = ${PREFIX}"
	@echo "DEST    = ${DEST}"

wswsh.conf:
	@echo creating config from wswsh.conf.example
	@cp wswsh.conf.example $@
	@echo you may take a look at $@

clean: ${DEST}
	@echo removing dest
	@rm -r ${DEST}

gen:
	@./wswsh ${PREFIX}

regen: clean gen

generate: gen

purge: wswsh.conf ${DEST}
	@echo purging the config and dest
	@rm wswsh.conf
	@rm -r ${DEST}

.PHONY: all options clean gen regen generate purge
