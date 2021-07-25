#! /bin/bash

confirm() {
    sleep 0.05
    # The me-select-entry and me-accept-entry options are need to allow single click selection
    ans=$(echo -e "Yes\nNo" | rofi -me-select-entry '' -me-accept-entry 'MousePrimary' -width -40 -eh 2 -dmenu -no-custom -i -p "$1" -l 2)
    if [ $ans == "Yes" ]; then
        echo "YEEES"
        $2
    elif [ $ans == "No" ]; then
        echo "NOOOO"
    fi 
}

options="Lock\nSuspend\nExit i3\nReboot\nShutdown"

sel=$(echo -e $options | rofi -me-select-entry '' -me-accept-entry 'MousePrimary' -width -30 -eh 2 -dmenu -no-custom -i -p "Please select" -l 5)

case "$sel" in
    Lock)           $HOME/i3conf/power/lock.sh     ;;
    Suspend)        $HOME/i3conf/power/suspend.sh  ;;
    'Exit i3')
        confirm "Do you really want to exit i3?" "i3-msg exit"
    ;;
    Reboot)
        confirm "Do you really want to REBOOT?" "$HOME/i3conf/power/reboot.sh"
    ;;
    Shutdown)
        confirm "Do you really want to SHUTDOWN?" "$HOME/i3conf/power/poweroff.sh"
    ;;
esac
