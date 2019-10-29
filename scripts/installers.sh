#!/bin/sh

set -e

# find the installers and run them iteratively
git ls-tree --name-only -r HEAD | grep install.sh | while read -r installer; do
	if [ $installer = "homebrew/install.sh" ]; then
		continue
	fi
	echo "› ${installer}..."
	sh -c "$installer"
done
