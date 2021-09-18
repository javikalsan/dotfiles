#!/bin/sh

# command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# node version manager
curl -L https://git.io/n-install | bash

# go version manager
curl -sSL https://git.io/g-install | sh -s
