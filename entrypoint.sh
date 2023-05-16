#!/bin/sh 
echo "*** Starting python3 $@ ***"
env
echo $(eval echo "$@")
eval python3 -m "$@"
