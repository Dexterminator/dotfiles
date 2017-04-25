export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

ZSH_THEME="agnoster"

plugins=(git vi-mode zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Use vi-mode
bindkey -v
export KEYTIMEOUT=20

# Use vim cli mode
bindkey '^P' up-line-or-search
bindkey '^N' down-history

bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

bindkey -M viins 'kj' vi-cmd-mode

# Insert autosuggestion
bindkey '^O' autosuggest-accept
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=243'

# fzf
source "$FZF_PATH/shell/key-bindings.zsh"

alias gd="git diff"
alias ..='cd ..'
alias dc="docker-compose"
alias dm='docker-machine'

function lsg {
        ls | grep -i $1 | sort
}

function findn {
        find . -iname $1
}

if [ -f ~/.zshrc_local ]; then
	source ~/.zshrc_local
fi

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

export EDITOR=vim
