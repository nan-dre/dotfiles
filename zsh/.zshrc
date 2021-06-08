# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e

export EDITOR='vim'
export VISUAL='vim'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys in tab complete menu:
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
# bindkey -v '^?' backward-delete-char
# End of lines added by compinstall
autoload -U colors && colors
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

# Conda init
__conda_setup="$('/home/andy/.local/share/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/andy/.local/share/miniconda3/etc/profile.d/conda.sh" ]; then
# . "/home/andy/.local/share/miniconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
    else
# export PATH="/home/andy/.local/share/miniconda3/bin:$PATH"  # commented out by conda initialize
    fi
fi
unset __conda_setup

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

## ssh agent
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
  ssh-add ~/.ssh/alfa
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

## Detached xdg-open
function go () {
  nohup xdg-open "$*" > /dev/null 2>&1 &
}
## aliases
source $HOME/.aliases
source ~/.local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 2>/dev/null
bindkey "^[[3~" delete-char

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/andy/.local/share/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/andy/.local/share/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/andy/.local/share/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/andy/.local/share/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

