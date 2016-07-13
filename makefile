HOME = $(shell ./user_home.sh)

.PHONY: install 

install: installUser installSystem

installLinks: installUserLinks installSystemLinks

installDeps: installSystemDeps


installUser: basics i3

installUserLinks: basicsLinks i3Links

installUserDeps: basicsDeps i3Deps


installSystem: x

installSystemLinks: xLinks

installSystemDeps: xDeps


basics:	basicsLinks basicsDeps

basicsLinks:
	stow -v -t $(HOME) basics

basicsDeps:
	./install_deps.sh basics.deps


i3: i3Links i3Deps

i3Links:
	stow -v -t $(HOME) i3

i3Deps:
	./install_deps.sh i3.deps


x: xLinks xDeps

xLinks:
	stow -v -t / x

xDeps:
	./install_deps.sh x.deps
