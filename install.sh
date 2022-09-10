#!/bin/sh

data_dir="${XDG_DATA_HOME:-$HOME/.local/share}/gtkreate"
config_dir="${XDG_CONFIG_HOME:-$HOME/.config}/gtkreate"
config_file="$config_dir/gtkreaterc"

mkdir -p "$data_dir" "$config_dir"

overwrite=
needed="--needed"
while [ $# -gt 0 ]; do
    case "$1" in
        upgrade)
            git pull
            needed=""
            ;;
        overwrite)
            overwrite=1
            ;;
    esac
    shift
done

cp -rf src "$data_dir/"
cp -rf Makefile "$data_dir/"
[ -f "$config_file" ] || [ "$1" = "overwrite" ] || cp gtkreaterc "$config_file"

# install dependencies
printf "Installing dependencies..."
sudo pacman --noconfirm "$needed" -S bash grep sed bc glib2 gdk-pixbuf2 sassc gtk-engine-murrine gtk-engines librsvg xsettingsd
printf "Installing gtkreate..."
sudo cp -f gtkreate /usr/local/bin/
printf " done\n"
