#!/bin/sh

cat plan.markdown | grep -v '^\s*$' | sed -n '/# Operating Systems Course Plan/,$ p' | grep -v '^#.*' | grep -v '  \[.*$' | sed 's/\(.*\)|.*/\1/' | sort -R | head -n ${1:-1}
