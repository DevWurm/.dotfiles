HOME = $(shell ./home.sh)

.PHONY: install basics i3-wm nvim

install: basics

basics:
	stow -v -t $(HOME) basics

i3-wm:
	stow -v -t $(HOME) i3-wm

nvim:
	stow -v -t $(HOME) nvim
