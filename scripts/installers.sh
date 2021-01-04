#! env zsh

set -e
err_report() {
    echo "Error on line $1"
}

trap 'err_report $LINENO' ERR
INSTALLERS=($(find ${DOTFILES:-$HOME/.dotfiles} -name "install.sh"))
# Start with homebrew installs...
source "homebrew/install.sh"
# find the installers and run them iteratively
for installer in $INSTALLERS; do
	if [ $installer = "$HOME/homebrew/install.sh" ]; then
		echo "Skipping homebrew"
		continue
	fi
	echo "› ${installer}..."
	source "$installer"
done
