#!/bin/sh

set -e
INSTALLERS=($(find ${DOTFILES:-$HOME/dotfiles} -name "install.sh"))
echo $INSTALLERS
# Start with homebrew installs...
source "homebrew/install.sh"

# find the installers and run them iteratively
for installer in $INSTALLERS; do
	if [ $installer = "homebrew/install.sh" ]; then
		continue
	fi
	echo "› ${installer}..."
	source "$installer"
done
