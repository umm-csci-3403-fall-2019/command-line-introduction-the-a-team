
#!/bin/bash
chmod +x  big_clean.sh 
NAME=$1
SCRATCH=$2
echo $SCRATCH
HERE=$(pwd)

tar zxf "$NAME" --directory "$SCRATCH"
grep -lr "DELETE ME!" $SCRATCH | xargs rm -fr
cd $SCRATCH
tar -zcf "$HERE"/"cleaned_$NAME" *
