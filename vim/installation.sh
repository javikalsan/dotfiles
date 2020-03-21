#!/bin/bash 

# Install operating system dependencies
sudo apt-get install --assume-yes vim-nox vim-gtk editorconfig libx11-dev make gcc

# Install Python dependencies
pip3 install rope ropemode ropevim
pip3 install --user python-language-server[all]

# Install plugin manager package
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install vim plugins defined on .vimrc
vim +PluginInstall +qall
