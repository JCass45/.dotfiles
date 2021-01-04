#! env zsh

[ "$(uname -s)" != "Darwin" ] && return
echo "iTerm installation"
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "$DOTFILES/iterm"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true
