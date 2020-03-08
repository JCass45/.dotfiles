#!/bin/sh

if command -v lsd > /dev/null 2>&1; then
    alias ls="lsd --group-dirs=last -1"
    alias lsl="lsd -l --group-dirs=last -1"
    alias lsa="lsd -a --group-dirs=last -1"
    alias lsla="lsd -la --group-dirs=last -1"
else
    alias lsl="ls -l"
    alias lsa="ls -a"
    alias lsla="ls -la"
fi

alias reload="exec $SHELL"
