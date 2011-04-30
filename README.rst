Name
----

path-manip-sh

Description
-----------

This is a set of bash functions to list, prepend, append and remove elements from your PATH environment variable.

When components are added to the PATH, they are first removed if they already exist. This keeps the PATH from containing multiple references to the same component. That means you can run the same path modifying script multiple times, without your PATH growing out of control.

Usage
-----

In your .bashrc::

    source /path/to/path-manip-sh/path-manip.sh
    path-prepend /path/to/some/new/bin/

Functions
---------

path-list:
    List all the components of your PATH variable, one per line
path-remove <component>:
    Remove specified component from your PATH variable
path-prepend <component>:
    Add component to beginning of PATH (after removing any instances of it)
path-append <component>:
    Add component to end of PATH (after removing any instances of it)

See Also
--------

* https://github.com/ingydotnet/perl5lib-manip-sh
* https://github.com/ingydotnet/rel2abs-sh

Author
------

Ingy dot Net <ingy@ingy.net>

Copyright
---------

Copyright © 2011. Ingy dot Net

License
-------

ISC License. See LICENSE file.
