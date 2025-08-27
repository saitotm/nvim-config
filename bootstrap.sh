#!/usr/bin/env sh
mkdir -p $HOME/.config
ln -snf $PWD/nvim $HOME/.config/nvim
nvim --headless "+Lazy! sync" +q
