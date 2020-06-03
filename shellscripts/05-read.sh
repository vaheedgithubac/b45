#!/usr/bin/env bash

# Most of the time we need to take the input from the user and run script with the given inputs by the user.
# When we want to take input after the script is executed then we go for read command.
# read command will prompt you for input.

read -p 'Enter your name: ' name
read -p 'Enter your Course: ' course

echo -e "Congratulation, Your name $name is selected for $course course "

## Scripts most times run automated in background and not run by a user manually. Those cases read command cannot help. Read command will be helpful only if the script definetly run by a user.
# Hence read command is not much preferred one we choose the other alternative.

