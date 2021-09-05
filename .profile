#!/bin/sh

# add scripts to the path
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':' -)"
export PATH="$PATH:${XDG_DATA_HOME:-$HOME/.local/share}/cargo/bin"

# default programs
xdg-settings set default-web-browser firefox.desktop
export BROWSER='firefox'
export EDITOR='nvim'
export MANPAGER='nvim +Man!'
export PAGER='less'
export READER='zathura'
export TERMINAL='st'
export TERM='st-256color'
export DIFFPROG='nvim -d'

# xdg variables
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# zsh variables
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/zsh/zhistory"
export HISTSIZE=5000
export SAVEHIST=5000

# variables for home directory clean up
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export STARSHIP_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/starship/starship.toml"
export LESSHISTFILE=-
export XAUTHORITY="${XDG_DATA_HOME:-$HOME/.local/share}/X11/Xauthority"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-"$HOME/.config"}/gtk-2.0/gtkrc-2.0"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="${XDG_CONFIG_HOME:-$HOME/.config}/java"
export GRADLE_USER_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/gradle"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/npm/npmrc"
export TEXMFHOME="${XDG_DATA_HOME:-$HOME/.local/share}/texmf"
export TEXMFVAR="${XDG_CACHE_HOME:-$HOME/.cache}/texlive/texmf-var"
export TEXMFCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/texlive/texmf-config"
export RUSTUP_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/rustup"

# telegram
export TDESKTOP_USE_GTK_FILE_DIALOG=1
export DESKTOP_APP_I_KNOW_ABOUT_GTK_INCOMPATIBILITY=1

# other variables
export SUDO_ASKPASS="$HOME/.local/bin/dmenu/dmenu_askpass"
export AWT_TOOLKIT='MToolkit wmname LG3D'
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export QT_QPA_PLATFORMTHEME='qt5ct'
export COLORTERM='truecolor'

#execute startx at startup
[ -z ${DISPLAY} ] && [ ${XDG_VTNR} -eq 1 ] && exec startx "${XDG_CONFIG_HOME:-$HOME/.config}/X11/xinitrc"
