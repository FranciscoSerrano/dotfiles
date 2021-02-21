#!/usr/bin/env bash

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

echo "Installing your perferred tools and apps..."
# Programming Languages
brew install node
brew install python
brew cask install java
brew cask install anaconda

# Dev Tools
brew install git
brew install htop
brew install docker
brew install neofetch
brew install starship #shell theme
brew cask install balenaetcher
brew cask install visual-studio-code

# Communication Apps
brew cask install slack
brew cask install discord

# Web Browsers
brew cask install firefox
brew cask install tor-browser
brew cask install brave-browser

#File Encryption
brew cask install keka
brew install jesseduffield/horcrux/horcrux

# Writing Apps
brew install vim

# Entertainment
brew install cowsay
brew install cmatrix
brew cask install obs
brew cask install vlc
brew cask install steam
brew cask install calibre
brew cask install minecraft
brew cask install transmission
