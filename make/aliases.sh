#! env zsh

alias m="make"
alias mc="make clean"
alias mb="nocorrect make -q build || make build && make -q build-image || make build-image"
alias ml="make lint"
alias mt="nocorrect make -q test || make test && make -q tests || make tests"
alias mp="make package"
alias mpub="make publish"
alias mr="make run"
