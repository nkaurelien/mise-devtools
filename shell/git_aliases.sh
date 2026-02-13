#!/bin/bash

# Git aliases - source this file to enable shortcuts
# Usage: source git_aliases.sh

# Basic operations
alias gi='git init'
alias gc='git clone'
alias gst='git status'
alias ga='git add'
alias gcm='git commit'
alias gcmm='git commit -m'
alias gl='git log'
alias gb='git branch'
alias gco='git checkout'
alias gm='git merge'
alias gbd='git branch -D'
alias gr='git remote'
alias gra='git remote add'
alias gp='git push'
alias gpl='git pull'
alias gpf='git fetch'
alias grh='git reset --hard HEAD'
alias grv='git revert'
alias gd='git diff'

# Visualization
alias gk='gitk --all &'
alias gx='gitx --all'
alias glog='git log --oneline --decorate --graph'

# Advanced
alias gignore='git update-index --assume-unchanged'
alias gunignore='git update-index --no-assume-unchanged'
alias gclean='git clean -fd'
alias gundo='git reset HEAD~1 --mixed'

# Swap files
alias git-swap-files='git ls-files -o'
alias git-clean-swap-files='git clean -xfd'
alias git-rm-swap-file='git rm --cached'
