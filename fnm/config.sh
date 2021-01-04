#! env zsh
# eval "$(fnm env --use-on-cd)"
export PATH="/var/folders/hn/h9ymkhwj4dv8krbyqynxslpw0000gn/T/fnm_multishell_91316_1610408427350/bin":$PATH
export FNM_MULTISHELL_PATH="/var/folders/hn/h9ymkhwj4dv8krbyqynxslpw0000gn/T/fnm_multishell_91316_1610408427350"
export FNM_DIR="/Users/jackc/.fnm"
export FNM_LOGLEVEL="info"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
export FNM_USING_LOCAL_VERSION=0

autoload -U add-zsh-hook
_fnm_autoload_hook() {
	if [[ -f .nvmrc && -r .nvmrc || -f .node-version && -r .node-version ]]; then
		FNM_USING_LOCAL_VERSION=1
		fnm use --install-if-missing
	elif [ $FNM_USING_LOCAL_VERSION -eq 1 ]; then
		FNM_USING_LOCAL_VERSION=0
		fnm use default
	fi
}

add-zsh-hook chpwd _fnm_autoload_hook &&
	_fnm_autoload_hook