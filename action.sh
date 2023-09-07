#!/bin/bash

if [ -z "$ACTION" ]; then
    echo "No action was specified."
    exit 126
fi

FILE="${ACTION}.sh"
if [ ! -f "$FILE" ]; then
    echo "Action $ACTION does not exist."
    exit 127
fi

source $FILE