#!/bin/sh
zsh-syntax-highlighting
	zsh-completions
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]]; then
    git clone git@github.com:zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
fi

if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-completions" ]]; then
    git clone git@github.com:zsh-users/zsh-completions.git "$ZSH_CUSTOM/plugins/zsh-completions"
fi
