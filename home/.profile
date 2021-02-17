
# If user ID is greater than or equal to 1000 & if ~/bin exists and is a directory & if ~/bin is not already in your $PATH
# then export ~/bin to your $PATH.
if [[ $UID -ge 1000 && -d $HOME/.local/bin && -z $(echo $PATH | grep -o $HOME/.local/bin) ]]
then
    export PATH="${PATH}:$HOME/.local/bin"
fi

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="$XDG_CACHE_HOME"

export NAME="Ruadhan Kinneavy"
export EMAIL="rmakinn@protonmail.com"

export PAGER="less"
export EDITOR="nvim"
export VISUAL="code-oss"

# Custom man page, see gh:pjungwir/manpj
export MANPATH="$MANPATH:$HOME/.local/share/man/out"
export MANSECT="1:n:l:8:3:2:3posix:3pm:3perl:5:4:9:6:7:rk"

# Attempting to get gtk/qt to look nice together
export DESKTOP_SESSION=gnome
export QT_QPA_PLATFORMTHEME=qt5ct
export SXHKD_SHELL='/usr/bin/sh'

# Uncluttering $HOME & overriding non-xdg-compliant apps
# for more info & examples, see: 
# - https://github.com/grawity/dotfiles/blob/master/.dotfiles.notes
# - https://wiki.archlinux.org/index.php/XDG_Base_Directory
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export GNUPGHOME="$HOME/.config/gnupg"
export INPUTRC="$XDG_CONFIG_HOME/inputrc"
export SCREENRC="$HOME/.config/screenrc"
export WGETRC="$HOME/.config/wgetrc"
export SQLITE_HISTORY="$HOME/.local/share/history/sqlite"
export ICEAUTHORITY="$XDG_RUNTIME_DIR/ICEauthority"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export SCREENDIR="$XDG_RUNTIME_DIR/screen"
export XCOMPOSEFILE="$XDG_CONFIG_HOME/x/compose"
export XCOMPOSECACHE="$XDG_DATA_DIR/compose"
export BASH_COMPLETION_USER_FILE="$XDG_CONFIG_HOME/bash-completion/bash_completion"
export HISTFILE="$XDG_DATA_HOME/share/history/bash"
export LESSHISTFILE=-
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"

export LEIN_HOME="$XDG_DATA_HOME/lein"
export CARGO_HOME="$XDG_CONFIG_HOME/bin/cargo"
export RUSTUP_HOME="$XDG_CONFIG_HOME/bin/rustup"
export GOPATH="$XDG_CONFIG_HOME/bin/go"
export STACK_ROOT="$XDG_DATA_HOME/stack"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export WORKON_HOME="$XDG_DATA_HOME/virtualenvs"

export ADB_VENDOR_KEY="$XDG_CONFIG_HOME/android"

##############
# Miscellany
###

# better scrolling
#MOZ_USE_XINPUT2="1"

# font sub-pixel rendering library
#FREETYPE_PROPERTIES="truetype:interpreter-version=40"

