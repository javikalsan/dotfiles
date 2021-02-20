#!/bin/bash

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip &&

unzip JetBrainsMono.zip &&

sudo mkdir /usr/local/share/fonts/JetBrainsMono

sudo mv *.ttf /usr/local/share/fonts/JetBrainsMono/

rm JetBrainsMono.zip
