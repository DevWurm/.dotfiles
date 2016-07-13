#!/bin/sh

depsFile=$1

if [ $(cat $depsFile | wc -l) -gt 0 ]
then
	pacman -Sy
	pacman -S --needed $(< $depsFile)
fi
