#!/usr/bin/bash

if [ $(pgrep openfortivpn) ]; then
    echo "{\"state\":\"Good\", \"text\":\" \"}"
else
    echo "{\"text\":\" \"}"
fi