#!/usr/bin/env bash

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

echo "Installing your perferred tools and apps..."
# Programming Languages
brew install deno rust lua

# Dev Tools
brew install git tree starship neofetch tmux helix keka

# Communication Apps
brew cask install slack discord

# Web Browsers
brew cask install firefox tor-browser
