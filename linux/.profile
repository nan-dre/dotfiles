export PATH="$PATH:/home/andy/.local/bin/"
export PATH="$PATH:/opt/anaconda/bin"
unset command_not_found_handle

export XDG_CONFIG_HOME="$HOME/.config"
export RANGER_LOAD_DEFAULT_RC=FALSE

export BROWSER=/usr/bin/firefox
export TERMINAL=/usr/bin/xfce4-terminal
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
. "$HOME/.cargo/env"
