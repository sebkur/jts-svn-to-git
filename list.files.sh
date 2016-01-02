#!/bin/bash

find . -path ./.git -prune -o -type f -print | sed -e "s/.*\///" >> /tmp/filelist
