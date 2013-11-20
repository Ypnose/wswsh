wswsh - [w]eb [s]ucks [w]ithout [sh]ell
-------------------------------------

wswsh is a static website framework using shell. It means [w]eb [s]ucks [w]ithout [sh]ell. Simple name for a simple script.  
*You can read another [howto](http://blog.ypnose.org) with examples*

How to use it
------------

Create a directory including the following files:

	Makefile
	wswsh
	wswsh.conf.example

You'll need a config file. Run `make wswsh.conf`. Edit it according to your needs. The comments explain almost everything.  
If you change `DEST` in `wswsh.conf`, you may need to hack the `Makefile` a little bit.

``` makefile
PREFIX   = ${HOME}/Repos/Wswsh
DEST     = ${PREFIX}/dest
```

A typical hierarchy contains a `src` directory, with your website inside it.

	.
	├── Makefile
	├── src
	│   ├── css
	│   │   └── style.css
	│   ├── blog
	│   │   └── my_post.wshtml
	│   ├── me
	│   │   └── john_doe.wshtml
	│   └── foo
	│       └── baz
	│           └── this_is_a_test.wshtml
	├── wswsh
	└── wswsh.conf

Each folder in `src` will be reproduced in a new directory called `dest` (assuming you didn't change the `DEST`).

Powering http://blog.ypnose.org  
If you use wswsh for your website, please contact me. I'll add your website in the README.
