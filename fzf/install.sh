#!/bin/sh

if [[ ! -d "$ZSH_CUSTOM/plugins/fzf-tab" ]]; then
    git clone https://github.com/Aloxaf/fzf-tab "$ZSH_CUSTOM/plugins/fzf-tab"
fi

