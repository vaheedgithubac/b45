#!/usr/bin/env bash

# For loop is going to deal with a list of items

ITEMS="shipping user cart"

for item in $ITEMS ; do
    echo "Restarting Service $item"
    systemctl restart $item
done
