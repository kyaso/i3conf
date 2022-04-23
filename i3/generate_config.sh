#!/usr/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: ./generate_config.sh THEME"
    exit 0
fi

THEME_DIR="./themes"
THEME=$THEME_DIR/$1

# Check if selected theme exists
if [ ! -e $THEME ]; then
    echo "Theme '$1' does not exist under ./themes!"
    exit 1
fi

# Generate config
cat $THEME > config
cat config_base >> config

