#!/bin/bash

REPO=repo

DIR="$(readlink -f $(dirname $0))"
CONVERT="$DIR/convert.to.unix.sh"

cd "$REPO"

svn2git svn://svn.code.sf.net/p/jts-topo-suite/code --authors ../jts.authors --revision 1:9
git filter-branch -f --tree-filter "$CONVERT" svn/trunk
