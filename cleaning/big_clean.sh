#!/bin/bash
NAME=$1
SCRATCH=$2
HERE=$(pwd)

tar -zxf "$NAME" --directory "$SCRATCH"
cd "$SCRATCH" || exit
FILES="./*"
for f in $FILES
do
  if [ $(grep -c "DELETE ME!" "$f") -gt  0 ]
  then
    rm "$f"
  fi
done
tar -zcf "$HERE"/"cleaned_$NAME" *
