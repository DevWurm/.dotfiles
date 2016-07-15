HOME = $(shell ./user_home.sh)

.PHONY: install 

install: installUser installSystem

installLinks: installUserLinks installSystemLinks

installDeps: installSystemDeps


installUser: basics wm

installUserLinks: basicsLinks wmLinks

installUserDeps: basicsDeps wmDeps


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


x: xLinks xDeps

xLinks:
	stow -v -t / x

xDeps:
	./install_deps.sh x.deps
