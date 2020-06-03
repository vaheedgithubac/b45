#!/usr/bin/env bash

<<EOF

If command is usually seen in three forms.

1. Simple-IF

if [ expression ]; then
    commands  <-- If expression is true we will execute these commands.
fi

2. If-Else

if [ expression ]; then
    commands <-- If expression is true we will execute these commands
else
    commands  <-- if expression is false we will execute these commands.
fi

3. Else-if

if [ expression1 ]; then
    commands  <-- If expression1 is true then it will execute these commands, But if it fails then it check next expression
elif [ expression2 ]; then
    commands
fi


EOF


## Expression

<<EOF

Expressions are categorized as 1. String Operators , 2. Numerical Operators, 3. File Operators

All operators can be found from man page of bash

https://linux.die.net/man/1/bash
EOF

a=100

if [ $a -gt 0 ]; then
    echo "Value of a is greater than 0 "
else
    echo "Value of a is less then 0"
fi

read -p 'Enter course name: ' course

if [ $course = aws ]; then
    echo "AWS COurse "
elif [ $course = devops ]; then
    echo "DevOps Course"
else
    echo "Available course are aws & devops !! Choose one of them"
    exit 1
fi