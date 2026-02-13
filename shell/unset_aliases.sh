#!/bin/bash

# Unset all aliases defined by this project
# Usage: source unset_aliases.sh
# Source: https://gitlab.com/-/snippets/3762574

aliases=(
    pwd ls cp mv rm vim nano cal rsync wget curl unzip tar gzip bzip2 xz
    less man help history exit hostname whoami df du
    .. ... .... cd.. cd... cd.... cd~ cd- c
    ll la le md rd cpr
    d dl dt p v
    psg top killall
    ping ports
    update upgrade install remove
    sd-start sd-stop sd-restart sd-enable sd-disable sd-status
    lr-test lr-force
    gi gc gst ga gcm gcmm gl gb gco gm gbd gr gra gp gpl gpf grh grv
    gd gk gx glog gignore gunignore gclean gundo
    git-swap-files git-clean-swap-files git-rm-swap-file
    disk-usage disk-tree clean-temp clean-logs clear-cache empty-trash
    clear-downloads clean-kernels optimize-disk check-disk
    create_swap remove_swap swap_usage
    grep human_date ipad ip4 ip6 netstat sshx scpr mkctl
    tf tfi tfp tfa tfd tfo tfg tfs tfl tff tfv tfw tfiw tft tfu tfr tfsh
)

for alias in "${aliases[@]}"; do
    unalias "$alias" 2>/dev/null
done

echo "All aliases have been unset."
