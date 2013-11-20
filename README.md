wswsh - [w]eb [s]ucks [w]ithout [sh]ell
-------------------------------------

wswsh is a static website framework using shell. It means [w]eb [s]ucks [w]ithout [sh]ell. Simple name for a simple script.
*You can read another [howto](blog.ypnose.org) with examples*

How to use it
------------

Create a directory including the following files:

	Makefile
	wswsh
	wswsh.conf.example

You'll need a config file. Run `make wswsh.conf`. Edit it according to your needs. The comments explain almost everything.
If you change `DEST` in `wswsh.conf`, you may need to hack the `Makefile` a little bit.

``` makefile
PREFIX = ${HOME}/Repos/Wswsh
DEST = ${PREFIX}/dest
```

Powering http://blog.ypnose.org
If you use wswsh for your website, please tell me it. I'll add your website in the README.
