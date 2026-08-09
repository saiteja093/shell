#!/bin/bash

set -e # ERR

trap 'echo "there is an error in $LINENO, command: $BASH_COMMAND"' ERR

echo "hellow world"
echo "i am learning shell"
echol "printing error here"
echo "no error found"
