#!/bin/sh
# ~/.xinitrc

xrdb -merge ~/.Xresources
xset b off

while true; do
    xsetroot -name "$(acpi -b | awk '{print $3, $4}' | sed s/,/''/g) .. $(date +"%H:%M .. %Y %m %d")"
    sleep 1s
done &

nohup redshift -l 35:-77 &

exec dwm
