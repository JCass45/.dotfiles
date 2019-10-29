#!/bin/sh

if command -v lsd > /dev/null 2>&1; then
    alias ls="lsd --group-dirs=last"
    alias lsl="lsd -l --group-dirs=last"
    alias lsa="lsd -a --group-dirs=last"
    alias lsla="lsd -la --group-dirs=last"
else
    alias lsl="ls -l"
    alias lsa="ls -a"
    alias lsla="ls -la"
fi
