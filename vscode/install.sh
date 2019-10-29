#!/bin/sh

if command -v code >/dev/null; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi
	mkdir -p "$VSCODE_HOME/User"

	ln -sf "$HOME/dotfiles/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	ln -sf "$HOME/dotfiles/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
	ln -sf "$HOME/dotfiles/vscode/snippets" "$VSCODE_HOME/User/snippets"

	while read -r extension; do
		code --install-extension "$extension" || true
	done <"$HOME/dotfiles/vscode/extensions.txt"
fi