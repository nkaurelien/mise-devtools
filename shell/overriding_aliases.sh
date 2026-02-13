#!/bin/bash

# Overriding aliases - safer/enhanced defaults for common commands
# Usage: source overriding_aliases.sh
# Source: https://gitlab.com/-/snippets/3762574

alias pwd='pwd'
alias ls='ls -la'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias vim='vim'
alias nano='nano'
alias cal='cal'
alias rsync='rsync -avz'
alias wget='wget -q'
alias curl='curl -s'
alias unzip='unzip'
alias tar='tar -xzvf'
alias gzip='gzip'
alias bzip2='bzip2'
alias xz='xz'
alias less='less -F'
alias man='man -P less'
alias help='help'
alias history='history'
alias exit='exit'
alias hostname='hostname'
alias whoami='whoami'
alias df='df -h'
alias du='du -sh'
