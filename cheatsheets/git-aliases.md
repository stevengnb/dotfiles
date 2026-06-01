# Git Aliases (oh-my-zsh)

## Status & Info
| Alias | Command |
|---|---|
| `gst` | git status |
| `gd` | git diff |
| `gds` | git diff --staged |
| `gl` | git log --oneline --graph |
| `gb` | git branch |
| `gba` | git branch --all |
| `gbl` | git blame -w |

## Staging & Committing
| Alias | Command |
|---|---|
| `ga` | git add |
| `gaa` | git add --all |
| `gau` | git add --update |
| `gapa` | git add --patch |
| `gc` | git commit (opens editor) |
| `gcmsg` | git commit -m |
| `gcam` | git commit --all --message |
| `gca!` | git commit --amend |

## Branching & Checkout
| Alias | Command |
|---|---|
| `gco` | git checkout |
| `gcb` | git checkout -b |
| `gcd` | git checkout develop |
| `gcm` | git checkout main/master |
| `gbD` | git branch --delete --force |

## Remote
| Alias | Command |
|---|---|
| `gp` | git push |
| `gpf` | git push --force-with-lease |
| `gpl` | git pull |
| `gf` | git fetch |
| `gfa` | git fetch --all --prune |
| `grv` | git remote -v |

## Stash
| Alias | Command |
|---|---|
| `gsta` | git stash push |
| `gstp` | git stash pop |
| `gstl` | git stash list |
| `gstd` | git stash drop |

## Rebase & Merge
| Alias | Command |
|---|---|
| `grb` | git rebase |
| `grbi` | git rebase -i |
| `grba` | git rebase --abort |
| `grbc` | git rebase --continue |
| `gm` | git merge |
| `gma` | git merge --abort |

## Misc
| Alias | Command |
|---|---|
| `gbs` | git bisect |
| `gcp` | git cherry-pick |
| `grh` | git reset HEAD |
| `grhh` | git reset HEAD --hard |
| `gitnuke` | git clean -df && git reset HEAD --hard |
