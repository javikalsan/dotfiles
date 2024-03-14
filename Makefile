SHELL := /bin/bash

default: help

help:
	@echo "#########################"
	@echo "# dotfiles installation #"
	@echo "#########################"
	@printf "Available commands: \n	all:	Install all components\n\
		alias:	Install alias component\n\
		install-tmux:	Install tmux configuration files\n\
		install-vim:	Install vim configuration files and plugins\n"

alias_execution:
	@./alias/installation.sh

alias: alias_execution

install-tmux:
	@cd ./stowed && stow -t "$(HOME)" tmux

install-vim:
	@cd ./stowed && stow -t "$(HOME)" vim
	@./vim/installation.sh

all: alias_execution tmux_execution vim_execution

.PHONY: default alias install-tmux install-vim all
