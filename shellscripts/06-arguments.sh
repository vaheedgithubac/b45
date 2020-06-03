#!/usr/bin/env bash

# There are some special variables which will help in taking the inputs as arguments
# Variable of them are $0,$1,$2.....$n, $#, $@, $*

echo 'Value of $0 =' $0
# $0 is the name of the script, In case if you want to know the name of the script then we use $0 to access it.

echo 'Value of $1 =' $1
# $1 is first argument, $2 is second argument and so on.

echo "Congratulations, Your name $1 is selected for $2 course"

echo 'Value of $* =' $*
echo 'Value of $@ =' $@
## All arguments which are parsed can be obtained from $* and $@

echo 'Value of $# =' $#
# Number of arguments parsed