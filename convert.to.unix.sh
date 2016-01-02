#!/bin/bash

find . \(\
	-name "*.bat" \
	-o -name "*.c" \
	-o -name "*.classpath" \
	-o -name "*.command" \
	-o -name "*.cpp" \
	-o -name "*.h" \
	-o -name "*.html" \
	-o -name "*.in" \
	-o -name "*.java" \
	-o -name "*.MF" \
	-o -name "*.project" \
	-o -name "*.properties" \
	-o -name "*.rb" \
	-o -name "*.sh" \
	-o -name "*.supp" \
	-o -name "*.txt" \
	-o -name "*.wkt" \
	-o -name "*.xml" \
	-o -name "*.xsd" \
	-o -name "configure" \
	-o -name "Doxyfile" \
	-o -name "readme" \
	-o -name "README" \
	-o -name "TODO" \
	\) -print0 | xargs -0 dos2unix
