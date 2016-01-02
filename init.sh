#!/bin/bash

REPO=repo

DIR="$(readlink -f $(dirname $0))"
CONVERT="$DIR/convert.to.unix.sh"

mkdir -p "$REPO"
cd "$REPO"

svn2git svn://svn.code.sf.net/p/jts-topo-suite/code --authors ../jts.authors --revision 1:5
git filter-branch -f --tree-filter "$CONVERT" -- --all

cat ../REPO_CONFIG >> .git/config
