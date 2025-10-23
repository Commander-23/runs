#!/bin/bash

sudo apt update && sudo apt upgrade
sudo apt install zsh zoxide fzf stow 

sudo chsh cmdr -s /bin/zsh
cd dotfiles
stow .