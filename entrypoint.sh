#!/bin/sh 
echo "*** Starting $@ ***"
python3 -m $(eval echo "$@")
