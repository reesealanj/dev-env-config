#!/bin/bash

YES_ANSWER="y"
NO_ANSWER="n"
BASE_LOG_LEADER="init_config:"
BASH_LEADER="(bash)"
NVIM_LEADER="(nvim)"
TMUX_LEADER="(tmux)"

function init_bash {
	echo -n "$BASE_LOG_LEADER$BASH_LEADER Removing config from $HOME/.bashrc"
	echo
	rm "$HOME/.bashrc"
	echo -n "$BASE_LOG_LEADER$BASH_LEADER Removing config from $HOME/.bash_profile" 
	echo
	rm "$HOME/.bash_profile"
	echo -n "$BASE_LOG_LEADER$BASH_LEADER Copying config to $HOME" 
	echo
	$(cp "./dotfiles/.bashrc" "$HOME/.bashrc")
	$(cp "./dotfiles/.bash_profile" "$HOME/.bash_profile")
}

function clear_nvim_cache {
	echo -n "$BASE_LOG_LEADER$NVIM_LEADER backing up existing nvim config to $HOME/.config/nvim.backup"
	echo
	$(rm -rf $HOME/.config/nvim.backup)
	$(mv "$HOME/.config/nvim" "$HOME/.config/nvim.backup")
	echo -n "$BASE_LOG_LEADER$NVIM_LEADER removing existing nvim config from cache"
	echo
	$(rm -rf "$HOME/.local/share/nvim")
}

echo -n "$BASE_LOG_LEADER All actions performed will OVERWRITE existing configs. Continue? [y/n]: "
read -r should_run_script

if [[ "$should_run_script" != "$YES_ANSWER" ]]; then
	exit
fi

echo -n "$BASE_LOG_LEADER Do you want to copy the .bashrc and .bash_profile? [y/n]: "
read -r should_copy_bash_config

if [[ "$should_copy_bash_config" = "$YES_ANSWER" ]]; then
	init_bash
fi

echo -n "$BASE_LOG_LEADER Do you want to set up neovim? [y/n]: "
read -r should_setup_neovim

if [[ "$should_setup_neovim" = "$YES_ANSWER" ]]; then
	echo -n "$BASE_LOG_LEADER$NVIM_LEADER Do you want to clear any exist nvim config and cache? [y/n]: "
	read -r should_clear_existing_nvim

	if [[ "$should_clear_existing_nvim" = "$YES_ANSWER" ]]; then
		clear_nvim_cache	
	fi

	echo -n "$BASE_LOG_LEADER$NVIM_LEADER Copying nvim config files to $HOME/.config/nvim"
	$(cp -r "./nvim" "$HOME/.config/")
fi

echo
exit
