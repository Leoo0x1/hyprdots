#!/bin/bash
initial=1
while :
do
    if [ $(hyprctl monitors | grep -c "Monitor HDMI-A-1") -gt 0 ]; then
        hyprctl keyword monitor "eDP-1, disable"
        hyprctl keyword monitor "HDMI-A-1, 1920x1080@60, 0x0, 1"
	if [ $initial -eq 1 ]; then
		hyprctl dispatch workspace 1 
	else
		echo "0"
	fi
    else
        hyprctl keyword monitor "eDP-1, 1920x1080@60, 0x1080, 1.5"
    fi
    initial=0
    sleep 1
done
