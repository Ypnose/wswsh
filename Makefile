# 2013 - wswsh - Ypnose <linuxien[AT]legtux[DOT]org
# Makefile for wswsh - see LICENSE for copyright and license
# If you modified $DEST in wswsh.conf, you should probably hack this Makefile.

SOFT = wswsh
PREFIX = ${HOME}/Repos/Wswsh
DEST = ${PREFIX}/dest

options:
	@echo ${SOFT} options:
	@echo "PREFIX = ${PREFIX}"
	@echo "DEST = ${DEST}"

config: wswsh.conf.example
	@echo creating config
	@cp wswsh.conf.example wswsh.conf
	@echo you may take a look at wswsh.conf

clean: ${DEST}
	@echo removing dest
	@rm -r ${DEST}

purge: wswsh.conf ${DEST}
	@echo purging the config and dest
	@rm wswsh.conf
	@rm -r ${DEST}

gen:
	@./wswsh ${PREFIX}

regen: clean gen

generate: gen

server:
	@echo starting the server
	tinyserv

.PHONY: options config clean purge gen regen generate server
