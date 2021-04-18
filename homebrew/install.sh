#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
# General tools
brew install grc coreutils openssl
# Servers
brew install nginx
# AWS
brew install awscli awsebcli
# Databases
brew install mongodb postgresql
# Big data
brew install apache-spark
# React native tools
brew cask install fastlane
brew install watchman

# Scala
brew install scala sbt
# JavaScript
brew install node --without-npm
brew install yarn
# Ruby
brew install rbenv
# Go
brew install go
# Python
brew install python python2 python3
# Java
brew cask install java
# Cocoapods
brew install cocoapods

exit 0
