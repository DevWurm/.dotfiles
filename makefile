HOME = $(shell ./user_home.sh)

.PHONY: install 

install: installUser installSystem

installLinks: installUserLinks installSystemLinks

installDeps: installSystemDeps


installUser: basics wm nvim

installUserLinks: basicsLinks wmLinks nvimLinks

installUserDeps: basicsDeps wmDeps nvimDeps


installSystem: x

installSystemLinks: xLinks

installSystemDeps: xDeps


basics:	basicsLinks basicsDeps

basicsLinks:
	stow -v -t $(HOME) basics

basicsDeps:
	./install_deps.sh basics.deps


wm: wmLinks wmDeps

wmLinks:
	stow -v -t $(HOME) wm

wmDeps:
	./install_deps.sh wm.deps

nvim: nvimLinks nvimDeps

nvimLinks:
	mkdir -p $(HOME)/.config/nvim
	stow -v -t $(HOME) nvim

nvimDeps:
	./install_deps.sh nvim.deps

x: xLinks xDeps

xLinks:
	stow -v -t / x

xDeps:
	./install_deps.sh x.deps
