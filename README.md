wswsh - [w]eb [s]ucks [w]ithout [sh]ell
---------------------------------------

wswsh is a static website script using shell. It means [w]eb [s]ucks
[w]ithout [sh]ell. Simple name for a simple script.
It has many advantages:

  * Lightweight
  * Only requires a shell + UNIX utilities
  * Markdown / [smu](https://github.com/Gottox/smu) support
  * Easily "hackable" with external scripts / interpreters
  * Less than 140 LOC (without layouts)
  * Human readable configuration
  * Atom 1.0 Feed support

*You can read another howto with examples [here](http://blog.ywstd.fr/2013/blogging-shell.html) (might be useful).*

How to use it?
--------------

Create a directory including the following files:

	includes (contains layout)
	Makefile
	wswsh
	wswsh.conf.default

You'll need a config file. Run `make wswsh.conf`. Edit it according to
your needs. The comments explain almost everything.  

A typical hierarchy contains a `src` directory, with your website inside
it.

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
*wswsh* supports [smu](https://github.com/Gottox/smu) with revision
`2c7b9d2ec0`. If you write your posts in markdown, you should use smu +
`.md`, `.markdown` or `.txt` extensions.
By default, there is no interpreter, only `cat` is used. It involves
posts written in HTML.

When you're ready, launch `make gen` (or `make regen` if you did it
already). `make regen` deletes an existing `dest` folder. Using the
previous example, we now have:

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

Note(s)
-------

If you use the same `wswsh` executable for your blogs (assuming you have
several websites), it's possible to put `wswsh` in your `PATH`, instead
of having a "redundant" file, in every directory.  
If you do that, you have to modify the `Makefile`:

```make
gen:
	@${SOFT} ${PWD}
```

The default behavior allows you to modify `wswsh` for your websites. So,
you can write custom modifications per sites.

An "interpreter" can be still used if it's ouside your `PATH`. Write the
full path to the executable, within `wswsh.conf`:

	INTERP="/home/foo/my_exec"

Why not provide a script sh compliant (or even bash)?
-----------------------------------------------------

Few months ago, I still wanted to write a `sh` compliant version but I
decided to drop that idea. At the moment, we are less than 5 people who
use it. Creating a second version would be a waste of time, especially
when the users already switched to `mksh`.  
Maintaining two redundant versions isn't easy and I do not want to work
for nothing. If you're still interested, you're free to adapt to `sh`.
It shouldn't be complicated.

`awk` compatibility
-------------------

When I added awk regexes, one of my goal was to support `nawk`, `mawk`
and `gawk`. `gawk` is very common among Linux distributions, so I didn't
have the choice. The regexes were "created" on `mawk`. I tested the
compatibility and it worked flawlessly with the required implementations.  
So, you can gain some precious seconds if you're brave enough to use
`nawk` or `mawk`.

Copyright
---------

Code created by Ypnose, under BSD (3-Clause) License.

Website(s)
----------

Powering:
  * http://blog.ywstd.fr
  * https://cosmofox.net/blog/

If you decided to use wswsh for your website(s), please contact me. I'll
add it in the README.
