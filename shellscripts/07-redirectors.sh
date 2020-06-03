#!/usr/bin/env bash

### OUTPUT REDIRECTOR

# When we run some command it generates o/p (may or may not)
# That input we need to redirect to a file to store for future reference and so it will not display on screen.
#   1. You need the file for future reference.
#   2. You never need the content only you dont want to display the output.
#   3. You want to store o/p of a command and also you dont want to overwrite the previous content of the file.
#   4. We need o/p on screen and also we need o/p in file for future reference.
#   5. Redirect o/p and error to same file


## 1.
# ls > /tmp/out

## 2.
# ls >/dev/null

## 3.
# ls >>/tmp/out

## 4.
# ls | tee /tmp/out <- Over write previous content
# ls | tee -a /tmp/out <- Append to previous content

## 5.
# ls -ld /root /root1 1>/tmp/out 2>/tmp/err
# ls -ld /root /root1 &>/tmp/out



#### INPUT REDIRECTOR
# grep root < /etc/passwd
# mysql < /tmp/schema.sql
