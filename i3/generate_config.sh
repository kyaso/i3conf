#!/usr/bin/bash

DEFAULT_THEME="catppuccin"
THEME_DIR="./themes"

if [ $# -ne 1 ]; then
    THEME=$THEME_DIR/$DEFAULT_THEME
else
    THEME=$THEME_DIR/$1
fi

# Check if selected theme exists
if [ ! -e $THEME ]; then
    echo "Theme '$1' does not exist under ./themes!"
    exit 1
fi

# Generate config
echo "##################################################################" > config
echo "### This config was generated using '$0 $1'" >> config
echo "##################################################################" >> config
echo "" >> config
cat $THEME >> config
cat config_base >> config

