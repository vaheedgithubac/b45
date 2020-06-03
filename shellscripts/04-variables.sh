#!/usr/bin/env bash

# When we assign a name to a set of data , that is called a variable.
# In shell we can declare variable using, VAR_NAME=DATA
# For example
a=10        # You can put intigers
b=11.2      # You can put Float values
c=DevOps    # You can put a character set
d=abc123    # you can put a string

# There are no data types in bash shell by default, Everything is a string

# To access a shell variable you can use these formats
# a=10
# $a
# ${a}

a=10
echo $a
echo ${a} ## Only few situations you need this, else always use without braces.

echo ${a}00

# Variable names have limitations.
# Allowed values are a-z, A-Z, 0-9, & Underscore _
# No Special characters are allowed in variable names.
# Variable should not start with a number., Ex: 1a=10

echo -e "Good Morning, Today date is 2020-02-12"

# We can get values dynamically by executing commands and storing those output in variables, THis is called as command substitution.
# ex: DATE=$(date)
# DATE - Variable, date is command.

DATE=$(date +%F)
echo -e "Good Morning, Today date is $DATE"

# You can do some minimal arithematic operations using variable declarations.
# ex : add=$((1+2))

i=10
i=$(($i+2))
echo $i

# From above you need to understand that a variable once declared can be overwritten
# Explore read-only variables if you dont want any variable to be over-written

# Some / Most times you need variables but those should not be declared inside the script

echo "Value of B_E = $B_E"

# Variables on terminal can be accessed inside the script if those are exported using export command
# Ex: export B_E=DevOps




