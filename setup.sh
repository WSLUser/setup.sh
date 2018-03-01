#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install youtube-dl aria2 mas

brew cask install spotify viscosity cocktail appcleaner etcher monolingual

mas install #insert codes for pages, keynote, textual 7, owly, todoist, tweetbot, unarchiver, magnet, grandperspective, deliveries, reeder

defaults write com.apple.Dock autohide -bool TRUE; killall Dock # make dock auto-hide

defaults write NSGlobalDomain _HIHideMenuBar -bool true # make menubar auto-hide
