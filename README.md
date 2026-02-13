# mise-devtools

Dev environment setup powered by [mise-en-place](https://mise.jdx.dev/).

## Setup

1. [Install mise](https://mise.jdx.dev/getting-started.html)
2. Clone this repo and activate:

```bash
git clone https://github.com/nkaurelien/mise-devtools.git
cd mise-devtools
mise trust
```

## Git aliases

### Via mise tasks

```bash
mise run gst          # git status
mise run gcmm -- "msg" # git commit -m "msg"
mise run gco -- main   # git checkout main
```

List all available tasks:

```bash
mise tasks
```

### Via shell aliases

Source the aliases directly in your shell:

```bash
source shell/git_aliases.sh
```

Or add to your `.bashrc` / `.zshrc`:

```bash
source /path/to/mise-devtools/shell/git_aliases.sh
```

## Aliases reference

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

## Sources

- [GitHub Gist](https://gist.github.com/nkaurelien/1a72e8fe752cb39574aa73e7cee7a80a)
- [GitLab Snippet](https://gitlab.com/-/snippets/3762573)
