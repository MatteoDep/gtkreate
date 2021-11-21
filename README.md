# gtkreate

gtkreate is a command line tool to create gtk themes which started as a
simplified copy of
[oomox-gtk-theme](https://github.com/themix-project/oomox-gtk-theme).

## Installation

```
git clone https://github.com/MatteoDep/gtkreate
cd gtkreate
./install.sh
```

To upgrade you can run `./install.sh upgrade`.
To overwrite your configs with default ones run `./install.sh overwrite`.

## Usage

```
gtkreate <theme-name>
```

## Config

The configs are in `~/.config/gtkreate/gtkreaterc`.
In order to change the generated theme you need to change this file.

### Use with base16 and flavours

You can use this tool together with the amazing [flavours for base 16](https://github.com/misterio77/flavours).
execute the following commands to make the template available:

```
git clone https://github.com/MatteoDep/base16-gtkreate.git
mkdir -p ~/.local/share/flavours/base16/templates/gtkreate
cp base16-gtkreate/templates ~/.local/share/flavours/base16/templates/gtkreate/
rm -rf base16-gtkreate
```

In your `gtkreaterc` make sure to wrap your color definitions with `# Start/End flavours` like this:

```
#!/bin/sh

# Start flavours
BG=2E3440
FG=E5E9F0
... other colors ...
# End flavours

ROUNDNESS=0
SPACING=3
... other settings ...
```

and put this in your `~/.config/flavours/config.toml`

```
[[items]]
file = "~/.config/gtkreate/gtkreaterc"
template = "gtkreate"
hook = "gtkreate"
```
