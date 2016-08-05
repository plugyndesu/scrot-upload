#!/bin/sh

scrot -u /tmp/uploadedPicture.png
limf -c 13 /tmp/uploadedPicture.png -l --log
URL="$(tac /home/plugyn/limf.log | egrep -o 'https?://[^ ]+' -m 1)"
firefox $URL