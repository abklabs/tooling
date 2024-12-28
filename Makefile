SHELL := /usr/bin/env bash

.DEFAULT_GOAL := bootstrap

.PHONY: bootstrap check_os check_brew brew_cmds

bootstrap: check_os check_brew brew_cmds
	@echo "INFO: done bootstrapping!"

check_os:
	@OS=$$(uname); \
	if [ "$$OS" != "Darwin" ]; then \
		echo "FATAL: bootstrapping currently only supports Darwin/OS X!"; \
		exit 1; \
	fi

check_brew:
	@# Using brew shellenv to check if Homebrew is installed
	@brew shellenv > /dev/null 2>&1 || \
		( echo "FATAL: this bootstrapper requires homebrew be installed: https://brew.sh" && exit 1 )

brew_cmds:
	@echo "INFO: updating homebrew's metadata..."
	@brew update
	@echo "INFO: installing required tooling via homebrew..."
	@brew bundle

