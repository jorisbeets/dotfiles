#!/usr/bin/env bash

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"


# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp
<<<<<<< HEAD
brew install geckodriver
=======
brew install jupyter


>>>>>>> 3651c9918400b4b668a6728d9a96cc23417affc1

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install Brew Packages
brew install python
brew install tree
brew install quik
brew install wget --with-iri


# Install MacOS Applications
brew cask install google-chrome
brew cask install firefox
brew cask install virtualbox
brew cask install sourcetree
brew cask install gimp
brew cask install vlc
brew cask install hyperdock
brew cask install divvy
brew cask install wireshark
brew cask install whatsapp
brew cask install balenaetcher
brew cask install adobe-acrobat-reader
brew cask install caffeine
brew cask install visicut
<<<<<<< HEAD
brew cask install sketchbook
=======
brew cask install postman

>>>>>>> 3651c9918400b4b668a6728d9a96cc23417affc1


# Install Source Code Pro Font
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro

