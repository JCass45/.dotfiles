#!/bin/sh

if [[ ! -d "$ZSH/custom/plugins/fzf-tab" ]]; then
    git clone https://github.com/Aloxaf/fzf-tab "$ZSH/custom/plugins/fzf-tab"
fi

