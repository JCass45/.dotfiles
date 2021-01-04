#! env zsh

if command -v pyenv > /dev/null 2>&1; then
	ln -sf "$DOTFILES/pyenv/default_packages" "$HOME/.pyenv/default_packages"
	ln -sf "$DOTFILES/pyenv/version" "$HOME/.pyenv/version"
fi
