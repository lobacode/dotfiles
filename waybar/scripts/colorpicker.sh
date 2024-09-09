#!/usr/bin/env bash

color=$(hyprpicker --autocopy --no-fancy --format hex)
notify-send 'Copied to Clipboard' "Color Hex: $color"