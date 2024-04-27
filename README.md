# Dev Environment Setup

This repo houses all of my configurations and dotfiles as best as possible. I'll keep this updated when there's any major changes.

> Last Major Update: 04/27/2024

# Getting Everything Configured
> It's worth noting this is not the "best" written code and is just me trying to learn and be better.

## Prerequisites
1. Install tmux
2. Install Neovim 

## Install/Setup
There's two ways that you can use this repo. You can either clone this repository and manually copy all the configurations into their proper locations (`tmux` and `bash` configs are in the dotfiles folder) OR you can use the script that I've been working on to walk you through copying all of the requisite configurations across to the proper location.

If you'd like to use my script to do this, you'll need to do the following:

1. Change the permissions of the init script by using `chmod +x ./scripts/init_config.sh`. This will allow you to run the shell script as an executable. 
2. At that point make sure you're in the root folder of this repo (important for the commands because I haven't written a script that's well equipped to "figure out" where to run commands from).
3. You can run `./scripts/init_config.sh` from there and you'll be walked through setting up the following:
    - Setting up Bash configuration
    - Backing up existing nvim configurations to `~/.config/nvim.backup/` 
    - Setting up the nvim configuration

# TODO
- Update tmux config with a better theme
- Update bash config to make the status line prettier 
- Add a script to copy existing configuration into this repo to commit to version control
- Add autocomplete for Next.js applications [video ref](https://www.youtube.com/watch?v=8um8OYwvz3c)
