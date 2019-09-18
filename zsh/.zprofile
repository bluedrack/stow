export PATH=$PATH:$HOME/.config/scripts/:$HOME/.local/bin/

export XDG_CONFIG_HOME="$HOME/.config"


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export ST=$HOME/repos/st
export DWM=$HOME/repos/dwm
export DMENU=$HOME/repos/dmenu

export SCRIPTS=$HOME/.config/scripts

export EDITOR='vim'
export IDE='code-oss'
export BROWSER='firefox'
export TERMINAL='st'
export CALCULATOR='calc'

source $HOME/.cache/wal/colors.sh
export ALPHA='F2'
export color0_alpha="#$ALPHA${color0/'#'}"

if [[ ! $DISPLAY ]]; then
	exec startx
fi
