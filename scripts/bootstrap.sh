#! env zsh

if [ -z $(command -v brew) ]; then
    echo "Install homebrew!"
fi

if [ -z $ZSH ]; then
    echo "Install oh-my-zsh!"
fi
