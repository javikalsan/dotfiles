SHELL := /bin/bash

default: help

help:
	@echo "#########################"
	@echo "# dotfiles installation #"
	@echo "#########################"
	@printf "Available commands: \n	all:	Install all components\n\
		alias:	Install alias component\n\
		tmux:	Install tmux component\n\
		vim:	Install vim component\n"

alias_execution:
	@./alias/installation.sh

alias: alias_execution

tmux_execution:
	@ln -s `pwd`/tmux/tmux.conf $(HOME)/.tmux.conf

tmux: tmux_execution

vim_execution:
	@ln -s `pwd`/vim/vimrc $(HOME)/.vimrc
	@./vim/installation.sh

vim: vim_execution

all: alias_execution tmux_execution vim_execution

.PHONY: default alias tmux vim all
