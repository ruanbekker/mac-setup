# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# history
# https://unix.stackexchange.com/questions/273861/unlimited-history-in-zsh
export HISTFILE=~/.zsh_history
export HISTSIZE=500000
export HISTFILESIZE=500000
export HISTCONTROL=ignoredups:erasedups
export SAVEHIST=$HISTSIZE

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Custom Aliases
source ~/.custom/init.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
