#!/bin/sh
echo *** Starting python3 python3 -m $(eval echo "$@") ***
eval python3 -m "$@"
