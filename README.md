wswsh - [w]eb [s]ucks [w]ithout [sh]ell
-------------------------------------

wswsh is a static website framework using shell. It means [w]eb [s]ucks [w]ithout [sh]ell. Simple name for a simple script.
It has many advantages:
  * Lightweight
  * Only requires a shell + UNIX utilities
  * Markdown / smu support
  * Human readable configuration
  * 200 LOC
  * Atom 1.0 Feed support

*You can read another howto with examples [here](http://blog.ypnose.org) (might be useful).*

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
*wswsh* supports [smu](https://github.com/Gottox/smu) with revision `2c7b9d2ec0`. If you write your posts in markdown, you should use `.md`, `.markdown` or `.txt` extensions.
By default, there is no interpreter, only `cat` is used.

When you're ready, launch `make gen` (or `make regen` if you did it already). `make regen` deletes an existing `dest` folder.  
Using the previous example, we now have:

	.
	├── Makefile
	├── dest
	│   ├── css
	│   │   └── style.css
	│   ├── blog
	│   │   └── my_post.html
	│   ├── me
	│   │   └── john_doe.html
	│   └── foo
	│       └── baz
	│           └── this_is_a_test.html
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

`dest` is your generated website. You can upload it.

Copyright
--------

Code created by Ypnose, under BSD (3-Clause) License. You could send me fresh beers.

Powering http://blog.ypnose.org  
If you use wswsh for your website, please contact me. I'll add your website in the README.
