#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vim="nvim"
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias l='ls -la --color=auto'
alias ..='cd ..'
alias grep='grep --color=auto'
alias cdwm='vim ~/dwm/config.h'
alias mdwm='cd ~/dwm; sudo make clean install; cd -'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
. "$HOME/.cargo/env"

export PATH="$PATH:/home/elias/.local/bin"

source /usr/share/bash-completion/completions/git
