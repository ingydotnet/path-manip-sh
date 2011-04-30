#!/bin/bash
. ./tests/libtap.sh
. ./path-manip.sh

plan 8

test() {
    local PATH="$PATH"

    orig_path="$PATH"
    orig_len=$(expr `path-list|wc -l` - 1)
    ok 'path-list works. PATH has at least 3 parts' [ $orig_len -ge 3 ]
    ok 'path-list does not effect PATH' [ "$orig_path" = "$PATH" ]

    path-prepend "oh/my/word"
    new_len=`echo $PATH|sed s/[^:]//g|wc -L`
    ok 'path-prepend adds 1 component' [ $new_len -eq $(expr $orig_len + 1) ]
    prepend_path="$PATH"
    ok 'PATH is modified' [ "$PATH" != "$orig_path" ]

    path-append "oh/my/word"
    new_len=`echo $PATH|sed s/[^:]//g|wc -L`
    ok "adding same thing doesn't increase components" \
        [ $new_len -eq $(expr $orig_len + 1) ]
    ok "PATH is different" [ "$PATH" != "$prepend_path" ]

    path-remove "oh/my/word"
    new_len=`echo $PATH|sed s/[^:]//g|wc -L`
    ok 'path-remove removes path' [ $new_len -eq $orig_len ]
    ok "PATH is back to original" [ "$PATH" = "$orig_path" ]
}

test
