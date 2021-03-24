export ZDOTDIR=$HOME/.config/zsh

export PATH=$PATH:$HOME/.config/scripts/:$HOME/.local/bin/:$HOME/repos/jdk-11/bin/
# idea
export _JAVA_AWT_WM_NONREPARENTING=1

export XDG_DOWNLOAD_DIR="$HOME/dl"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export LESSHISTFILE=-
export HISTFILE="$XDG_DATA_HOME"/zsh/history
# compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
# compinit -d .cache/zsh/zcompdump-$ZSH_VERSION
autoload -Uz compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export ST=$HOME/dox/repos/st
export DWM=$HOME/dox/repos/dwm
export DMENU=$HOME/dox/repos/dmenu

export SCRIPTS=$HOME/.config/scripts
export SCHOOL=$HOME/school
export WORK=$HOME/work

export EDITOR='vim'
export IDE='code-oss'
export BROWSER='qutebrowser'
export TERM='alacritty'
export CALCULATOR='calc'
export DOCUMENT=$HOME/dox
export DOWNLOAD=$HOME/dl


export PATH=$PATH:$SCRIPTS
if test -f "$HOME/.cache/wal/colors.sh"; then
. $HOME/.cache/wal/colors.sh
fi

export ALPHA="F2"
export color0_alpha="#$ALPHA$(echo $color0 | sed -e "s/#//")"
