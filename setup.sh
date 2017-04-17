#!/bin/bash

CONFIG_DIR=$HOME/.config
echo "Creating config dir if not available: $CONFIG_DIR"
mkdir -p $CONFIG_DIR

DOTFILES_DIR=$(pwd -P)

# i3 config symlink
ln -sf $DOTFILES_DIR/i3 $CONFIG_DIR

# fonts
mkdir -p $HOME/.fonts

# Yosemite San Francisco Font
cp $DOTFILES_DIR/YosemiteSanFranciscoFont/*.ttf $HOME/.fonts/

# vim setup
ln -sf $DOTFILES_DIR/vim17/.vim $HOME
ln -sf $DOTFILES_DIR/vim17/.vimrc $HOME

# Xresources
ln -sf $DOTFILES_DIR/.Xresources $HOME

#####
##### Manual steps
# Change gtk 2.0 and 3.0 settings manually for fonts
# Get rofi
# pacman powerline-fonts
# https://aur.archlinux.org/packages/urxvt-fullscreen/
# https://aur.archlinux.org/packages/urxvt-resize-font-git/

