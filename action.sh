#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z "$ACTION" ]; then
    echo "No action was specified."
    exit 126
fi

FILE="${SCRIPT_DIR}/${ACTION}.sh"
if [ ! -f "$FILE" ]; then
    echo "Action $ACTION does not exist."
    exit 127
fi

source $FILE