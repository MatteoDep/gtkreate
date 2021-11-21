# gtkreate

gtkreate is a command line tool to create gtk themes.
The template sterted as a copy of [FlatColor 2.0 by jasperro](https://github.com/jasperro/FlatColor).

## Installation

```
git clone https://github.com/MatteoDep/gtkreate
cd gtkreate
./install.sh
```

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

Use a `gtkreaterc` like this one below:

```
#!/bin/sh

# Start flavours
# End flavours

ROUNDNESS=0
SPACING=3
GRADIENT=0.0"
```

and put this in your `~/.config/flavours/config.toml`

```
[[items]]
file = "~/.config/gtkreate/gtkreaterc"
template = "gtkreate"
hook = "gtkreate"
```
