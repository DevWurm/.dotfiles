.PHONY: install basics system

install: basics

basics:
	stow -v -t $(HOME) basics

system:
	stow -v -t / system
