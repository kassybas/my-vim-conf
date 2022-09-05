#!/usr/bin/env bash


 curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

brew uninstall ctags
brew install universal-ctags sqlite fd ripgrep glow

pip3 install --user neovim neovim-remote virtualenv
