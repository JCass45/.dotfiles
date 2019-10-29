#!/bin/sh

[ "$(uname -s)" != "Darwin" ] && exit 0
sed "s;/Users/carlos;$HOME;g" \
	"$HOME/dotfiles"/iterm/com.googlecode.iterm2.plist >"$HOME/dotfiles"/iterm/com.googlecode.iterm2.plist
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "$HOME/dotfiles/iterm"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true