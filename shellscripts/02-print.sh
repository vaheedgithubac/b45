#!/usr/bin/env bash

## TO print an output in Shell we can use either printf command or echo command.
## Our choice is echo command, because it is more easier and less syntax-full than printf

echo Hello World

## PRint two lines
echo Hello
echo World

# \n esc seq is available to print new line
echo Hello\nWorld

# When you use escape sequences like \n you are suppose to use single or double quotes for the input.
# Preferred quotes are Double QUotes.

echo "Hello\nWorld"

# ESC seq can be enabled only with -e option enabled in echo command.

echo -e  "Hello\nWorld"

## \t to print tab space.

## Print text in colors  using \e

# Colors are two types , 1. Foreground Color 2. Background Color


# COLOR         FOREGROUND             BACKGROUND
# Red               31                      41
# Green             32                      42
# Yellow            33                      43
# Blue              34                      44
# Magenta           35                      45
# Cyan              36                      46


# Syntax of enabling color is \e[COLm
# Example : echo -e "\e[<COL>mHello"

echo -e "\e[31m Hello in Red Color"

echo "Hello from Plain Color Text"

# In the above situation we are going to have the next line also printing in the color, because once you enable color it will not be disabled by default.
# We need to disable it , TO disable we use color code "0".

echo -e "\e[33mHello from Yellow Color\e[0m"
echo "Hello from plain color text"

