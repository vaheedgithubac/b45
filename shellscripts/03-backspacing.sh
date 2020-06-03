#!/usr/bin/env bash

echo -ne "Hello\b\b\b\b\b"
sleep 1
echo -ne "New line\b\b\b\b\b\b\b\b"
sleep 1
echo "One more line"


#####

HTML=(cart.html empty.html eum-tmpl.html index.html login.html payment.html product.html search.html shipping.html splash.html)

for i in ${HTML[*]}; do
    count=$(echo -n $i | wc -c )
    while [ $count -gt 0 ]; do
        B="$B\b"
        count=$(($count-1))
    done
    echo -n -e "Copying - $i$B"
    sleep 1
done