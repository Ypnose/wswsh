wswsh - [w]eb [s]ucks [w]ithout [sh]ell
-------------------------------------

wswsh is a static website script using shell. It means [w]eb [s]ucks [w]ithout [sh]ell. Simple name for a simple script.
It has many advantages:
  * Lightweight
  * Only requires a shell + UNIX utilities
  * Markdown / smu support
  * Human readable configuration
  * Less than 140 LOC (without layouts)
  * Atom 1.0 Feed support

*You can read another howto with examples [here](http://blog.ypnose.org/2013/blogging-shell.html) (might be useful).*

How to use it
------------

Create a directory including the following files:

	includes (contains layout)
	Makefile
	wswsh
	wswsh.conf.default

You'll need a config file. Run `make wswsh.conf`. Edit it according to your needs. The comments explain almost everything.  

A typical hierarchy contains a `src` directory, with your website inside it.

	.
	├── includes
	│   └── layout
	├── Makefile
	├── src
	│   ├── css
	│   │   └── style.css
	│   ├── blog
	│   │   └── my_post.txt
	│   ├── me
	│   │   └── john_doe.txt
	│   └── foo
	│       └── baz
	│           └── this_is_a_test.txt
	├── wswsh
	└── wswsh.conf

Each folder in `src` will be reproduced in a new directory called `dest`.
*wswsh* supports [smu](https://github.com/Gottox/smu) with revision `2c7b9d2ec0`. If you write your posts in markdown, you should use smu + `.md`, `.markdown` or `.txt` extensions.
By default, there is no interpreter, only `cat` is used. It involves posts written in HTML.

When you're ready, launch `make gen` (or `make regen` if you did it already). `make regen` deletes an existing `dest` folder.  
Using the previous example, we now have:

	.
	├── includes
	│   └── layout
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
	│   │   └── my_post.txt
	│   ├── me
	│   │   └── john_doe.txt
	│   └── foo
	│       └── baz
	│           └── this_is_a_test.txt
	├── wswsh
	└── wswsh.conf

`dest` is your generated website. You can upload it.

Copyright
--------

Code created by Ypnose, under BSD (3-Clause) License. You could send me fresh beers.

Powering http://blog.ypnose.org  
If you use wswsh for your website, please contact me. I'll add your website in the README.
