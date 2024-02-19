#!/bin/sh

if [ $# -lt 2 ]
then
    exit 1
else
    WRITEFILE=$1
    WRITESTR=$2
fi

FILE_DIR=`dirname $WRITEFILE`

mkdir -p "$FILE_DIR" && touch "$WRITEFILE"
echo "$WRITESTR" > "$WRITEFILE"
