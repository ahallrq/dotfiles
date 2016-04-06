#!/bin/bash
#awk -F"[][]" '/dB/ { gsub(/off/, "Muted"); gsub(/on/, "Unmuted"); print "Volume: " $2 " [" $6 "]" }' <(amixer sget Master) 

vol=$(pulseaudio-ctl full-status)
s=($vol)
m=`echo "${s[1]}" | sed 's/no/Unmuted/g;s/yes/Muted/g'`
echo Volume:  ${s[0]}\% \[${m}\]
