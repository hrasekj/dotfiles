#!/bin/bash

ICON=$HOME/.i3/lock.png
TMPBG=/tmp/screen.png

scrot $TMPBG
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG

i3lock -e -u -i $TMPBG
rm $TMPBG
