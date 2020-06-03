#!/usr/bin/env bash

# You assign a name to a set of data, then it is called as a variable.
# a=100

# You assign a name to set of commands, then it is called as a function.

# function sample() {
#   command1
#   command2
# }

# You can use or do not use function key word above, That is your choice .

# we can access the function with just the function name ::: sample

## FUnctions
sample() {
    echo Heloo I am from a function
    echo Value of a in function = $a
    b=20
    local c=30
}

sample1() {
    echo Line1 in Sample1
    return 0 ## same like exit command but for function, You can give exit status as well.
    echo Line2 in Sample2
}

## Main Program
a=10
sample
echo Value of b in Main Program = $b
echo Value of c in Main Program = $c
sample1
echo "End of Main Program"

### Observations
## Functions are always to be written before main program
## Variables from main program can be accessed in function
## Variables in Function can be accessed in Main Program as well.
## Any variables declared inside a function with local , those cannot be accessed in our main program.
## exit command in function will bring out of script but not out of function.
## TO come out of function we use return command