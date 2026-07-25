#!/bin/bash

#### special variables ####
echo "all args passed to script :: $@"
echo "number of vars passed to script :: $#"
echo "script name :: $0"
echo "present working directory :: $PWD"
echo "who is running :: $USER"
echo "home directory of current user :: $HOME"
echo "pid of this script :: $$"
sleep 100 &
echo "pid of recently executed background process :: $!"
echo "all args passed to script :: $*"
echo "$@"
echo "$*"