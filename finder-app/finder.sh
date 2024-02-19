#!/bin/sh

if [ $# -lt 2 ]
then
    exit 1
else
    FILESDIR=$1
    SEARCHSTR=$2
fi

if [ ! -d $FILESDIR ]
then
    exit 1
fi

NUMFILES=`find $FILESDIR -type f | wc -l`
NUMMATCHS=`grep -r $SEARCHSTR $FILESDIR | wc -l`

echo "The number of files are ${NUMFILES} and the number of matching lines are $NUMMATCHS"
