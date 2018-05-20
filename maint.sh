#!/bin/bash

echo "getting sudo"
sudo echo "got sudo"

echo "updating brew"
brew update ; brew upgrade ; brew cleanup ; brew prune ; brew doctor

echo "updating anaconda"
/anaconda3/bin/conda update --all --yes

echo "cleaning home folders of miscellaneous files"
cd ~
find . -name '.DS_Store' -type f -delete
find . -name '.Localized' -type f -delete

echo "cleaning home directory hidden files"
sudo rm -rf /Users/hayden/.cups*
sudo rm -rf /Users/hayden/.bash*
sudo rm -rf /Users/hayden/.local*
sudo rm -rf /Users/hayden/.config*

echo "running built-in macos maintenance scripts"
sudo periodic daily weekly monthly

echo "cleaning system files"
sudo rm -rf /tmp/* /var/log/* /var/tmp/*
sudo rm -rf /.DocumentRevisions-V100*
sudo rm -rf /.Spotlight-V100* 

echo "cleaning temporary user files"
sudo rm -rf /Users/hayden/Library/Logs/*
sudo rm -rf /Users/hayden/Library/Caches/*
sudo rm -rf /Users/hayden/Library/Saved\ Application\ State/*
sudo rm -rf /Users/hayden/Library/Cookies/*
sudo rm -rf /Users/hayden/Library/Application\ Support/CallHistory*
sudo rm -rf /Users/hayden/Library/Application\ Support/CrashReporter/*

echo "cleaning temporary safari files"
sudo rm -rf /Users/hayden/Library/Safari/History*
sudo rm -rf /Users/hayden/Library/Safari/LastSession.plist 
sudo rm -rf /Users/hayden/Library/Safari/LocalStorage/*
sudo rm -rf /Users/hayden/Library/Safari/RecentlyClosedTabs.plist 
sudo rm -rf /Users/hayden/Library/Safari/CloudTabs*

echo "cleaning temporary firefox files"
sudo rm -rf /Users/hayden/Library/Application\ Support/Firefox/Crash\ Reports/*
sudo rm -rf /Users/hayden/Library/Application\ Support/Firefox/Profiles/s7cd4cex.default/crashes/* 
sudo rm -rf /Users/hayden/Library/Application\ Support/Firefox/Profiles/s7cd4cex.default/datareporting/* 
sudo rm -rf /Users/hayden/Library/Application\ Support/Firefox/Profiles/s7cd4cex.default/storage/*
sudo rm -rf /Users/hayden/Library/Application\ Support/Firefox/Profiles/s7cd4cex.default/storage*
sudo rm -rf /Users/hayden/Library/Application\ Support/Firefox/Profiles/s7cd4cex.default/weave/*  
sudo rm -rf /Users/hayden/Library/Application\ Support/Firefox/Profiles/s7cd4cex.default/datareporting/*
sudo rm -f /Users/hayden/Library/Application\ Support/Firefox/Profiles/s7cd4cex.default/SiteSecurityServiceState.txt 
sudo rm -rf /Users/hayden/Library/Application\ Support/Firefox/Profiles/s7cd4cex.default/cookies*
