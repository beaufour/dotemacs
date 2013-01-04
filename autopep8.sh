#!/bin/sh
#
# Small wrapper that writes stdin to a temporary file so autopep8 can read from it
#
TMPFILE=$(mktemp -t emacsautopep8XXXXXXXX)
cat /dev/stdin > $TMPFILE
autopep8 --ignore=E501 $TMPFILE
rm -f $TMPFILE
