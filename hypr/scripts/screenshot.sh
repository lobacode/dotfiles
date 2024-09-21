#!/bin/sh

mkdir -p ~/Pictures/screenshots
filename=~/Pictures/screenshots/$(date +%Y-%m-%d_%H-%M-%S).png

if hyprctl activeworkspace | grep -q "DP-1"; then
    grim -c -o DP-2 $filename
fi

if hyprctl activeworkspace | grep -q "eDP-1"; then
    grim -c -o eDP-1 $filename
fi

notify-send 'Screenshot Taken' $filename