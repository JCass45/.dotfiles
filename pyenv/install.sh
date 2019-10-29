#!/bin/sh

if command -v pyenv >/dev/null; then
	ln -sf "$DOTFILES/pyenv/default_packages" "$PYENV_ROOT/default_packages"
fi