#!/bin/sh

[ "$(uname -s)" != "Darwin" ] && return
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "$HOME/dotfiles/iterm"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true