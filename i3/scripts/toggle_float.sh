#!/usr/bin/bash
# Source: https://www.reddit.com/r/i3wm/comments/4a8bj5/titlebars_only_on_floating_windows/d6pkjxc?utm_source=share&utm_medium=web2x&context=3

i3-msg "mark --add _; [con_mark=f] floating disable, border pixel 2, mark --add --toggle _; [con_mark=_] floating enable, border normal 2; mark --add --toggle f;"