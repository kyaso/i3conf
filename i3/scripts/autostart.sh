#!/bin/bash

# Workspaces
WS_BROWSER="1: "
WS_ZETTLR="2: "
WS_CODE="3: "
WS_TERM="4: "

# Applications
BROWSER=firefox
TERM=alacritty

# Start browser
i3-msg "workspace $WS_BROWSER; exec $BROWSER"

sleep 0.5

# Start terminal
i3-msg "workspace $WS_TERM; exec $TERM"

sleep 0.5

# Start Zettlr
i3-msg "workspace $WS_ZETTLR; exec $TERM"
sleep 1
xdotool key "z+KP_Enter"
i3-msg "move scratchpad"
