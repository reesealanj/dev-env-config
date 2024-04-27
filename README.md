# Dev Environment Setup

This repo houses all of my configurations and dotfiles as best as possible. I'll keep this updated when there's any major changes.

> Last Major Update: 04/27/2024

# Getting Started
> I'm working on replacing this step with a bash script so you can just clone & run `setup_configuration`, but that's going to take some time.

## Prerequisites
You'll need the following tools installed to actually have this setup work

1. tmux - [installation docs](https://github.com/tmux/tmux/wiki/Installing)
2. neovim - [installation docs]()

## Installation & Configuration
1. Clone this repository
```shell
git clone https://github.com/reesealanj/dev-env-config.git
```

2. Update the path to your "custom bash scripts" directory.
> You can use _either_ the `/scripts/` directory in this repo or you can copy your bash scripts elsewhere.

## Available Scripts

- `/scripts/setup/config_to_root.sh`: will attempt to copy all your configurations in this repo to the `$HOME` location.
- `/scripts/setup/root_to_config.sh`: will attempt to copy known configurations (tmux, nvim, bashrc/profile) to this repo so you can commit updates to configuration
