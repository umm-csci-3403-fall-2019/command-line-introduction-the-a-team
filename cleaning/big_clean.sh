#!/bin/bash
NAME=$1
SCRATCH=$2
HERE=$(pwd)

tar -zxf "$NAME" --directory "$SCRATCH"
grep -lr "DELETE ME!" $SCRATCH | xargs rm	




