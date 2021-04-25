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
brew install --appdir="/Applications" docker-compose
brew install --appdir="/Applications" fzf
brew install --appdir="/Applications" sshuttle
brew install --cask --appdir="/Applications" docker
brew install --cask --appdir="/Applications" multipass
brew install --cask --appdir="/Applications" virtualbox
brew install --cask --appdir="/Applications" vagrant
brew install --cask --appdir="/Applications" visual-studio-code
brew install --cask --appdir="/Applications" spotify

/usr/local/opt/fzf/install
source ~/.zshrc

brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew upgrade hashicorp/tap/terraform

# install font
echo "download, install this font and set on iterm2 at Term2 > Preferences > Profile > Text > Font" 
echo 'https://github.com/powerline/fonts/raw/master/Inconsolata/Inconsolata%20Bold%20for%20Powerline.ttf'

# powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo "set ZSH_THEME="powerlevel9k/powerlevel9k" in ~/.zshrc"

# iterm2 customization
git clone https://github.com/mbadolato/iTerm2-Color-Schemes ~/Downloads/iterm2-color-schemes
~/Downloads/iterm2-color-schemes/tools/import-scheme.sh -v ~/Downloads/iterm2-color-schemes/schemes/*
rm -rf ~/Downloads/iterm2-color-schemes

echo "restart iterm2 and change your theme at:" 
echo "iTerm2 > Preferences > Profile > Colors > Color Presets -> Import: Argonaut"

# dotfiles
# get vim config
curl --silent https://raw.githubusercontent.com/ruanbekker/mac-setup/master/.vimrc --output ~/.vimrc

# get vim colors
curl --silent https://raw.githubusercontent.com/ruanbekker/mac-setup/master/.vim/colors/molokai.vim --create-dirs --output ~/.vim/colors/molokai.vim

# get zsh config
curl --silent https://raw.githubusercontent.com/ruanbekker/mac-setup/master/.zshrc --output ~/.zshrc

# get zsh powerlevel9k.zsh-theme
curl --silent https://raw.githubusercontent.com/ruanbekker/mac-setup/master/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme --create-dirs --output ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
