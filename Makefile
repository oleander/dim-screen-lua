hs = $(HOME)/.hammerspoon
init = $(hs)/init.lua
dest = $(hs)/dim-screen.lua

install:
	@ln -sf "$(shell pwd)/main.lua" $(dest)
	@echo 'Symlinked, now include $(dest) into $(init) (without the .lua ext)'