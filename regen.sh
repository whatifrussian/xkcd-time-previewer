#!/bin/sh

ARGS=""

if [ $# -gt 1 ]; then
    echo "Too many arguments; exiting"
    exit 1
elif [ $# -eq 1 ] && [ "$1" == "gc" ]; then
    echo "Add option for regenerating captions file"
    ARGS="--gc"
elif [ $# -eq 1 ]; then
    echo "Unrecognixed argument; exiting"
    exit 2
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
${DIR}/.llgal/llgal --Pall --Ps --codeset UTF-8 ${ARGS}
