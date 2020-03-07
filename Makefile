SHELL := /bin/bash

default: help

help:
	@echo "Installation of dotfiles"
	@echo
	@printf "Available commands: \n	all:	Install all components\n\
		alias:	Install alias component\n\
		tmux:	Install tmux component\n"

alias_execution:
	@./alias/installation.sh

alias: alias_execution

tmux_execution:
	@ln -s `pwd`/tmux/tmux.conf $(HOME)/.tmux.conf

tmux: tmux_execution

all: alias_execution tmux_execution

.PHONY: default alias tmux all