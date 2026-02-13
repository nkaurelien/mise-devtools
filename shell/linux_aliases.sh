#!/bin/bash

# Linux/system aliases - source this file to enable shortcuts
# Usage: source linux_aliases.sh
# Source: https://gitlab.com/-/snippets/3762574

# --- Navigation ---
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias cd..='cd ..'
alias cd...='cd ../../'
alias cd....='cd ../../../'
alias cd~='cd ~'
alias cd-='cd -'
alias c='clear'

# Quick navigation
alias d='cd ~/Documents'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias p='cd ~/Pictures'
alias v='cd ~/Videos'
alias t='cd /tmp'

# --- File and directory management ---
alias ll='ls -lah'
alias la='ls -A'
alias le='ls -CF'
alias md='mkdir -p'
alias rd='rmdir'
alias cpr='cp -r'
alias cprr='cp -r --remove-destination'

# --- Process management ---
alias psg='ps aux | grep'
alias killall='killall -v'

# --- Network ---
alias ping='ping -c 5'
alias ports='netstat -tulanp'
alias ipad='ip addr show'
alias ip4='ip -c -4 addr'
alias ip6='ip -c -6 addr'
alias netstat='netstat -tulnp'
alias sshx='ssh -X'
alias scpr='scp -r'

# --- System updates (Debian/Ubuntu) ---
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'

# --- Systemd ---
alias sd-start='sudo systemctl start'
alias sd-stop='sudo systemctl stop'
alias sd-restart='sudo systemctl restart'
alias sd-enable='sudo systemctl enable'
alias sd-disable='sudo systemctl disable'
alias sd-status='sudo systemctl status'

# --- Logrotate ---
alias lr-test='logrotate -d /etc/logrotate.conf'
alias lr-force='logrotate -f /etc/logrotate.conf'

# --- Disk management ---
alias disk-usage='df -h'
alias disk-tree='du -sh *'
alias clean-temp='rm -rf /tmp/*'
alias clean-logs='rm -rf /var/log/*'
alias clear-cache='rm -rf ~/.cache/*'
alias empty-trash='rm -rf ~/.Trash/*'
alias clear-downloads='rm -rf ~/Downloads/*'
alias optimize-disk='sudo apt-get autoremove && sudo apt-get autoclean && sudo apt-get clean'
alias check-disk='sudo fsck -fy /'

# --- Swap ---
alias create_swap='sudo fallocate -l 4G /swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile'
alias remove_swap='sudo swapoff /swapfile && sudo rm /swapfile'
alias swap_usage='free -m'

# --- Misc ---
alias grep='grep --color=auto'
alias human_date='date +"%A, %B %d, %Y %T"'
alias mkctl='microk8s kubectl'
