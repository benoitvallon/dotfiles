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
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install homebrew packages
# General tools
brew install grc coreutils openssl
# Servers
brew install nginx
# AWS
brew install awscli awsebcli
# Databases
brew install postgresql
# Big data
brew install apache-spark
# React native tools
brew install fastlane
brew install watchman

# Scala
brew install scala sbt
# JavaScript
brew install node
brew install node@22
brew install yarn
# Ruby
brew install rbenv
# Go
brew install go
# Python
brew install python python2 python3
# Java
brew install java
# Cocoapods
brew install cocoapods

exit 0
