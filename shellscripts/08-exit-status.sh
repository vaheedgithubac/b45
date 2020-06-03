#!/usr/bin/env bash

# Exit status is the status of previous executed command used to validate whether the previous command is executed successfully or it failed with some error.

# Using ? variable we check the exit status. $? is what we refer. TO print exit exit status we can take help of echo command.

## Exit Status is a number.
# Exit states ranges from 0-255
# User numbers are 0-125, 126+ are system values
# 0 is global successful value, Where as nonzero changes from  command to command.

exit 11

# if an exit status is not given in the script then the last executed command exit status is used by shell script also.