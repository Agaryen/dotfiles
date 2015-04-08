#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

DEFAULTSESSION=awesome

export USER_NICKNAME="thibault miranda de oliveira"
export TERM="rxvt-unicode-256color"
export EDITOR="vim"

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias emacs='emacs -nw'
alias em='emacs'
alias boff='xset b off'
alias wee='weechat'
alias q!='exit'

PS1='\[\e[0;32m\][\u : \W] $ \[\e[0m\]'
