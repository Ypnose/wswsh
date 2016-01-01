# Makefile for wswsh
# Ypnose - http://ywstd.fr

SOFT = wswsh
DEST = $${PWD}/dest

all: clean gen

clean:
	@echo Removing dest
	@rm -rf ${DEST}

gen:
	@./${SOFT} $${PWD}

wswsh.conf: wswsh.conf.default
	@echo Creating config from wswsh.conf.default
	@cp wswsh.conf.default wswsh.conf

.PHONY: all clean gen
