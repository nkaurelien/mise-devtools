#!/bin/bash

# Overriding aliases - safer/enhanced defaults for common commands
# Usage: source overriding_aliases.sh
# Source: https://gitlab.com/-/snippets/3762574

alias pwd='pwd'              # Print working directory
alias ls='ls -la'            # List all files in long format (including hidden)
alias cp='cp -i'             # Copy with confirmation before overwriting
alias mv='mv -i'             # Move with confirmation before overwriting
alias rm='rm -i'             # Remove with confirmation before deleting
alias vim='vim'              # Open Vim editor
alias nano='nano'            # Open Nano editor
alias cal='cal'              # Display calendar
alias rsync='rsync -avz'    # Sync files: archive mode + verbose + compression
alias wget='wget -q'        # Download quietly (no progress bar)
alias curl='curl -s'        # Download silently (no progress output)
alias unzip='unzip'         # Unzip archives
alias tar='tar -xzvf'       # Extract tar.gz archives with verbose output
alias gzip='gzip'           # Compress with gzip
alias bzip2='bzip2'         # Compress with bzip2
alias xz='xz'               # Compress with xz
alias less='less -F'        # Pager: auto-quit if content fits one screen
alias man='man -P less'     # Read manual pages using less as pager
alias help='help'           # Show help for shell builtins
alias history='history'     # Show command history
alias exit='exit'           # Exit the shell
alias hostname='hostname'   # Show system hostname
alias whoami='whoami'       # Show current username
alias df='df -h'            # Disk usage in human-readable format (GB, MB)
alias du='du -sh'           # Directory size summary in human-readable format
