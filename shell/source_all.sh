#!/bin/bash

# Source all alias files
# Usage: source source_all.sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/git_aliases.sh"
source "$SCRIPT_DIR/linux_aliases.sh"
source "$SCRIPT_DIR/terraform_aliases.sh"
#source "$SCRIPT_DIR/overriding_aliases.sh"
