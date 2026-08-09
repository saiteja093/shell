#!/bin/bash

set -e # ERR

trap 'echo "there is an error in $lineno, command: $bash_command"' ERR

echo "hellow world"
echo "i am learning shell"
echol "printing error here"
echo "no error found"
