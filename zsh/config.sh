#! env zsh

# Set lang for UTF-8 compatible prompt fix
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# History stuff
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt HIST_EXPIRE_DUPS_FIRST
setopt +o nomatch

ENABLE_CORRECTION="true"
CASE_SENSITIVE="false"

# use emacs keybindings - compatible with my iterm settings
bindkey -e
# fix for cmd+delete, to delete only from the left of the cursor instead of entire line
bindkey "^U" backward-kill-line
# add cmd+shift+z redo to keybindings
bindkey "^X^_" redo