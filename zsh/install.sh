#!/bin/sh

if [[ ! -d "$ZSH/custom/plugins/zsh-syntax-highlighting" ]]; then
    git clone git@github.com:zsh-users/zsh-syntax-highlighting.git "$ZSH/custom/plugins/zsh-syntax-highlighting"
fi

if [[ ! -d "$ZSH/custom/plugins/zsh-completions" ]]; then
    git clone git@github.com:zsh-users/zsh-completions.git "$ZSH/custom/plugins/zsh-completions"
fi
