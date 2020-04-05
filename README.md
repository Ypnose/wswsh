wswsh - [w]eb [s]ucks [w]ithout [sh]ell
---------------------------------------

wswsh is a static website script using shell. It means [w]eb [s]ucks
[w]ithout [sh]ell. Simple name for a simple script.
It has many advantages:

  * Lightweight
  * Only requires a shell + UNIX utilities
  * Compatible with [ahrf](https://github.com/Ypnose/ahrf)
  * Easily "hackable" with external scripts / interpreters
  * Less than 140 LOC (without external layouts)
  * Human readable configuration

*You can read another howto with examples [here](http://ywstd.fr/blog/2013/blogging-shell.html) (might be a good intro).*

How to use it?
--------------

Create a directory including the following files:

	includes/layout
	wswsh
	wswsh.conf.default

You'll need a config file. Copy the file `wswsh.conf.default` to
`wswsh.conf`. Edit it according to your needs. The comments explain
almost everything.  

A typical hierarchy contains a `src` directory, with your website inside
it.

	.
	├── includes/
	│   └── layout
	├── src/
	│   ├── css/
	│   │   └── style.css
	│   ├── blog/
	│   │   └── my_post.txt
	│   ├── me/
	│   │   └── john_doe.txt
	│   └── foo/
	│       └── baz/
	│           └── this_is_a_test.txt
	├── wswsh
	└── wswsh.conf

Each directory in `src` will be reproduced in a new directory `dest`.

There is no default interpreter, only `cat` is called. It involves posts
written in HTML.
**wswsh** also supports [ahrf](https://github.com/Ypnose/ahrf).

When you're ready, launch `./wswsh "$PWD"`. Using the previous example,
we now have:

	.
	├── includes/
	│   └── layout
	├── dest/
	│   ├── css/
	│   │   └── style.css
	│   ├── blog/
	│   │   └── my_post.html
	│   ├── me/
	│   │   └── john_doe.html
	│   └── foo/
	│       └── baz/
	│           └── this_is_a_test.html
	├── src/
	│   ├── css/
	│   │   └── style.css
	│   ├── blog/
	│   │   └── my_post.txt
	│   ├── me/
	│   │   └── john_doe.txt
	│   └── foo/
	│       └── baz/
	│           └── this_is_a_test.txt
	├── wswsh
	└── wswsh.conf

`dest` is your generated website. You can upload it anywhere.

Note(s)
-------

If you want to have the same `wswsh` executable for all your blogs
(assuming you have several websites), it's possible to put `wswsh` in
your `PATH`, instead of having a "redundant" file, in every directory.

The default behavior allows you to modify `wswsh` for your websites. So,
it's possible to write custom modifications per site.

The true "power" of `wswsh` resides in hooks launched at many different
steps. Those hooks are sourced inside `wswsh` env allowing you to use
inherited variables to launch all kind of specific actions.

An "interpreter" can be run if it's placed ouside your `PATH`. Write the
full path to the executable, within `wswsh.conf`:

	WSH_INTERP="/home/foo/my_exec"

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
  * http://ywstd.fr/blog/
  * http://savoirvivre.intraaktion.de

You decided to adopt wswsh for your website(s)? Please contact me. I
would be happy to add it in the README.
