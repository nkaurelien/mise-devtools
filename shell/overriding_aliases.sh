#!/bin/bash

# Overriding aliases - safer/enhanced defaults for common commands
# Usage: source overriding_aliases.sh
# Source: https://gitlab.com/-/snippets/3762574

# Safe overrides
alias ls='ls -la'            # List all files in long format (including hidden)
alias cp='cp -i'             # Copy with confirmation before overwriting
alias mv='mv -i'             # Move with confirmation before overwriting
alias rm='rm -i'             # Remove with confirmation before deleting
alias rsync='rsync -avz'    # Sync files: archive mode + verbose + compression
alias less='less -F'        # Pager: auto-quit if content fits one screen
alias man='man -P less'     # Read manual pages using less as pager
alias df='df -h'            # Disk usage in human-readable format (GB, MB)
