#!/bin/zsh

# plugins
source '/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh' 2>/dev/null


# source extern files
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zsettings ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zsettings"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zfunctions ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zfunctions"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zcompletions ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zcompletions"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/aliases ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/aliases"
[[ -f ${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zshortcuts ]] && source "${XDG_CONFIG_HOME:-"$HOME/.config"}/zsh/zshortcuts"


# starship prompt
eval "$(starship init zsh)"

# define PS2
PS2='> '
