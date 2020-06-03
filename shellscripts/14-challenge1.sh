#!/usr/bin/env bash

read -p 'Enter the value: ' value


while [ $value -gt 0 ]; do
    i=$value
    j=1
    while [ $j -le $i ]; do
        echo -n "$j "
        j=$(($j+1))
    done
    echo
    value=$(($value-1))
done|tac