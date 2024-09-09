#!/usr/bin/env bash

mkdir -p ~/Pictures/screenshots
filename=~/Pictures/screenshots/$(date +%Y-%m-%d_%H-%M-%S).png
grim -g "$(slurp -b '#000000b0' -c '#00000000')" $filename
notify-send 'Screenshot Taken' $filename