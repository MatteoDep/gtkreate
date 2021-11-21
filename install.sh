#!/bin/sh

data_dir="${XDG_DATA_HOME:-$HOME/.local/share}/gtkreate"
config_dir="${XDG_CONFIG_HOME:-$HOME/.config}/gtkreate"
config_file="$config_dir/gtkreaterc"

mkdir -p "$data_dir" "$config_dir"

if [ "$1" = "update" ]; then
    git pull
fi

cp -rf template "$data_dir/template"
[ -f "$config_file" -o "$1" = "overwrite" ] || cp gtkreaterc "$config_file"

sudo cp -f gtkreate /usr/local/bin/
