SHELL := /bin/bash

default: help

help:
	@echo "#########################"
	@echo "# dotfiles installation #"
	@echo "#########################"
	@printf "Available commands: \n	all:	Install all components\n\
		alias:	Install alias component\n\
		tmux:	Install tmux component\n\
		install-vim:	Install vim\n"

alias_execution:
	@./alias/installation.sh

alias: alias_execution

tmux_execution:
	@ln -s `pwd`/tmux/tmux.conf $(HOME)/.tmux.conf

tmux: tmux_execution

install-vim:
	@cd ./stowed && stow -t "$(HOME)" vim
	@./vim/installation.sh

all: alias_execution tmux_execution vim_execution

.PHONY: default alias tmux install-vim	all
