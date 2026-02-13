# mise-devtools

Dev environment setup powered by [mise-en-place](https://mise.jdx.dev/).

## Install mise

> Full documentation: [mise.jdx.dev/installing-mise](https://mise.jdx.dev/installing-mise.html)

```bash
# curl (recommended)
curl https://mise.run | sh

# Homebrew (macOS/Linux)
brew install mise

# APT (Ubuntu/Debian)
sudo add-apt-repository -y ppa:jdxcode/mise
sudo apt update -y && sudo apt install -y mise

# DNF (Fedora/RHEL)
dnf copr enable jdxcode/mise && dnf install mise

# Pacman (Arch)
sudo pacman -S mise

# APK (Alpine)
apk add mise

# Cargo
cargo install mise

# NPM
npm install -g @jdxcode/mise
```

Activate mise in your shell (`~/.bashrc` or `~/.zshrc`):

```bash
eval "$(mise activate bash)"   # bash
eval "$(mise activate zsh)"    # zsh
mise activate fish | source    # fish
```

## Setup

Clone this repo and activate:

```bash
git clone https://github.com/nkaurelien/mise-devtools.git
cd mise-devtools
mise trust
```

## Docker

Build and run with all aliases pre-loaded:

```bash
docker build -t mise-devtools .
docker run -it --rm mise-devtools
```

## Usage

### Via mise tasks

```bash
mise tasks                    # List all available tasks
mise run gst                  # git status
mise run gcmm -- "msg"        # git commit -m "msg"
mise run sd-status -- nginx   # systemctl status nginx
mise run install -- curl      # apt-get install curl
```

### Via shell aliases

Source all aliases at once:

```bash
source shell/source_all.sh
```

Or source individually:

```bash
source shell/git_aliases.sh        # Git shortcuts
source shell/linux_aliases.sh      # Linux/system shortcuts
source shell/terraform_aliases.sh  # Terraform shortcuts
source shell/overriding_aliases.sh # Safer defaults (cp -i, rm -i, etc.)
```

To unset all aliases:

```bash
source shell/unset_aliases.sh
```

Add to your `.bashrc` / `.zshrc` for permanent use:

```bash
source /path/to/mise-devtools/shell/source_all.sh
```

## Aliases reference

### Git

| Alias | Command |
|-------|---------|
| `gi` | `git init` |
| `gc` | `git clone` |
| `gst` | `git status` |
| `ga` | `git add` |
| `gcm` | `git commit` |
| `gcmm` | `git commit -m` |
| `gl` | `git log` |
| `gb` | `git branch` |
| `gco` | `git checkout` |
| `gm` | `git merge` |
| `gbd` | `git branch -D` |
| `gr` | `git remote` |
| `gra` | `git remote add` |
| `gp` | `git push` |
| `gpl` | `git pull` |
| `gpf` | `git fetch` |
| `grh` | `git reset --hard HEAD` |
| `grv` | `git revert` |
| `gd` | `git diff` |
| `glog` | `git log --oneline --decorate --graph` |
| `gclean` | `git clean -fd` |
| `gundo` | `git reset HEAD~1 --mixed` |
| `gignore` | `git update-index --assume-unchanged` |
| `gunignore` | `git update-index --no-assume-unchanged` |

### Navigation

| Alias | Command |
|-------|---------|
| `..` | `cd ..` |
| `...` | `cd ../../` |
| `....` | `cd ../../../` |
| `c` | `clear` |
| `d` | `cd ~/Documents` |
| `dl` | `cd ~/Downloads` |
| `dt` | `cd ~/Desktop` |
| `t` | `cd /tmp` |

### Files & directories

| Alias | Command |
|-------|---------|
| `ll` | `ls -lah` |
| `la` | `ls -A` |
| `le` | `ls -CF` |
| `md` | `mkdir -p` |
| `rd` | `rmdir` |
| `cpr` | `cp -r` |

### Systemd

| Alias | Command |
|-------|---------|
| `sd-start` | `sudo systemctl start` |
| `sd-stop` | `sudo systemctl stop` |
| `sd-restart` | `sudo systemctl restart` |
| `sd-enable` | `sudo systemctl enable` |
| `sd-disable` | `sudo systemctl disable` |
| `sd-status` | `sudo systemctl status` |

### Network & system

| Alias | Command |
|-------|---------|
| `ping` | `ping -c 5` |
| `ports` | `netstat -tulanp` |
| `psg` | `ps aux \| grep` |
| `disk-usage` | `df -h` |
| `disk-tree` | `du -sh *` |
| `swap_usage` | `free -m` |

### Package management (Debian/Ubuntu)

| Alias | Command |
|-------|---------|
| `update` | `sudo apt-get update` |
| `upgrade` | `sudo apt-get update && upgrade` |
| `install` | `sudo apt-get install` |
| `remove` | `sudo apt-get remove` |

### Terraform

| Alias | Command |
|-------|---------|
| `tf` | `terraform` |
| `tfi` | `terraform init` |
| `tfp` | `terraform plan` |
| `tfa` | `terraform apply` |
| `tfd` | `terraform destroy` |
| `tfo` | `terraform output` |
| `tfg` | `terraform graph` |
| `tfs` | `terraform state` |
| `tfl` | `terraform console` |
| `tff` | `terraform fmt` |
| `tfv` | `terraform validate` |
| `tfw` | `terraform workspace` |
| `tfiw` | `terraform import` |
| `tft` | `terraform taint` |
| `tfu` | `terraform untaint` |
| `tfr` | `terraform refresh` |
| `tfsh` | `terraform show` |

### Overriding (safer defaults)

| Alias | Command |
|-------|---------|
| `cp` | `cp -i` (confirm before overwrite) |
| `mv` | `mv -i` (confirm before overwrite) |
| `rm` | `rm -i` (confirm before delete) |
| `ls` | `ls -la` |
| `rsync` | `rsync -avz` |
| `wget` | `wget -q` |
| `curl` | `curl -s` |
| `tar` | `tar -xzvf` |
| `less` | `less -F` |
| `df` | `df -h` |
| `du` | `du -sh` |

