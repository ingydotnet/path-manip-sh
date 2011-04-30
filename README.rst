Name
----

path-manip-sh

Description
-----------

This bash module is a set of functions to list, prepend, append and remove
elements from your `PATH` environment variable. It will also work with other
colon separated `PATH`-like environment variables like `PERL5LIB` and
`PYTHONPATH`, etc.

When components are added to a PATH, they are first removed if they already
exist. This keeps the PATH from containing multiple references to the same
component. That means you can run the same path modifying script multiple
times, without your PATH growing out of control.

Usage
-----

In your .bashrc::

    source `which path-manip.sh`
    path-prepend /path/to/some/new/bin/
    path-append $HOME/perl5/lib PERL5LIB

Installation
------------

The Makefile will let you run the tests and install the module::

    > make test
    > sudo make install

Functions
---------

Each of these functions can take an optional final argument, naming the
environment variable to operate on. The default environment variable is
`PATH`, of course.

path-list [<variable>]:
    List all the components of a PATH variable, one per line
path-remove <component> [<variable>]:
    Remove specified component from a PATH variable
path-prepend <component> [<variable>]:
    Add component to beginning of a PATH (after removing any instances of it)
path-append <component> [<variable>]:
    Add component to end of PATH (after removing any instances of it)

Repository
----------

This code can be found at https://github.com/ingydotnet/path-manip-sh

See Also
--------

* https://github.com/ingydotnet/rel2abs-sh
* https://github.com/rra/c-tap-harness

Author
------

Ingy dot Net <ingy@ingy.net>

Copyright
---------

Copyright © 2011. Ingy dot Net

License
-------

This library is free software, distributed under the ISC License.
See the LICENSE file distributed with this library.
