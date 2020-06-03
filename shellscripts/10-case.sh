#!/usr/bin/env bash

## Syntax of Case command
<<EOF
case var in
  patt1) commands ;;
  patt2) commands ;;
esac
EOF

## Observation on Syntax:
# var is a variable , the data in that variable will be checked with all the patterns given below
# if var data is equal to patt1 then commands inside patt1 will be executed.
# ;; is part of syntax telling to case that you are done with your commands.

read -p 'Enter Course Name: ' course

case $course in
    aws)
        echo "Welcome to AWS Training"
        echo "Available course timings are 10AM"
        ;;
    devops)
        echo "Welcome to DevOps Training"
        echo "Available course timings are 7AM"
        ;;
    *)
        echo "Invalid Course Name!!! Available course are aws & devops"
        exit 1
        ;;
esac