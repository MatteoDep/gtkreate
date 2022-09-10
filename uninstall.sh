#!/bin/sh

printf "Uninstalling..."
sudo rm /usr/local/bin/gtkreate

if [ "$1" = "purge" ]; then
    rm -r "${XDG_DATA_HOME:-$HOME/.local/share}/gtkreate"
    rm -r "${XDG_CONFIG_HOME:-$HOME/.config}/gtkreate"
fi
printf " done\n"
