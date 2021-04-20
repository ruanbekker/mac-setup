#!/usr/bin/env bash

xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install cask
brew install --cask iterm2

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install --appdir="/Applications" awscli@2
brew install --appdir="/Applications" jq
brew install --appdir="/Applications" wget
brew install --appdir="/Applications" go
brew install --appdir="/Applications" kubernetes-cli
brew install --cask --appdir="/Applications" multipass
brew install --cask --appdir="/Applications" virtualbox
brew install --cask --appdir="/Applications" vagrant
brew install --cask --appdir="/Applications" visual-studio-code
brew install --build-from-source fzf

/usr/local/opt/fzf/install
source ~/.zshrc

brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew upgrade hashicorp/tap/terraform
