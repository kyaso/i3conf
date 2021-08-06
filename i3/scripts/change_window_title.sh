#! /bin/bash

# Run rofi in dmenu mode to get new title
title=$(rofi -dmenu -p 'New title (leave empty for default)')

if [ -z $title ]; then
    # If the title given is empty, restore the original X11 title
    i3-msg title_format "%title"
else
    # Set new title
    i3-msg title_format "$title"
fi

