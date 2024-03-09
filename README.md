# mac-setup
Repo for My Mac Setup

#### Resources:
- https://github.com/nicolashery/mac-dev-setup
- https://github.com/donnemartin/dev-setup
- https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma
- https://hackernoon.com/macbook-dev-setup-5890e61a8f0a
- https://sourabhbajaj.com/mac-setup/Xcode/
- https://github.com/lra/mackup
- https://gist.github.com/vratiu/9780109 (bash colors)

#### Apps:

```
- Xcode
- Slack
- Docker Desktop for Mac
- Firefox
  Plugins:
  - https://addons.mozilla.org/en-US/firefox/addon/momentumdash/
  - https://addons.mozilla.org/en-US/firefox/addon/clippings/?src=homepage-collection-featured
  - https://addons.mozilla.org/en-US/firefox/addon/tomato-clock/?src=homepage-collection-featured
  - https://addons.mozilla.org/en-US/firefox/addon/gesturefy/?src=homepage-collection-featured
  - https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/
  - Lastpass
- Evernote
- Evernote Clipper
- Authy
- Terminal:
  Terminal Tools:
  - tmux
  - neovim
```

#### Homebrew:

```
xcode-select --install
sudo xcodebuild -license
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Favorites

iTerm and OhMyZSH:

```
brew update
brew cask install iterm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

iTerm Customization:

1. ZSH
2. Agnoster ZSH Theme, Argonaut iTerm Color Theme
3. Powerline and Menlo Fonts
4. VSCode Fix (`"terminal.integrated.fontFamily": "Menlo for Powerline"`)
5. ZSH AutoSuggestions

See this guide:
- https://gabrieltanner.org/blog/customizing-terminal-using-ohmyzsh/

Extra resources:
- https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/ (best)
- https://github.com/romkatv/powerlevel10k
- https://www.freecodecamp.org/news/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38/
- https://medium.com/ayuth/iterm2-zsh-oh-my-zsh-the-most-power-full-of-terminal-on-macos-bdb2823fb04c

ZSH Config:

```
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="agnoster"
#ZSH_THEME="awesomepanda"
```

Theme Config: (`~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme`)

```
set_default POWERLEVEL9K_CONTEXT_TEMPLATE "%n"
defined POWERLEVEL9K_LEFT_PROMPT_ELEMENTS || POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
defined POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS || POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs)
```

Editor:

```
brew cask install --appdir="/Applications" atom
# Atom + Git
# https://courses.cs.washington.edu/courses/cse154/19su/resources/assets/atomgit/macosx/
```

Tools:

```
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" visual-studio-code 
 -> (for setting code in path: https://stackoverflow.com/a/39604469)

brew install jq
brew install wget
brew install fzf
brew install kubernetes-cli
```

Firefox:

- [Firefly Pro Theme](https://addons.mozilla.org/en-GB/firefox/addon/firefly-pro/)
- [Multi-Account Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)

VSCode:

- GitLens
- Theme: [Firefly Pro](https://marketplace.visualstudio.com/items?itemName=ankitcode.firefly)
- Fonts: https://github.com/romkatv/powerlevel10k/issues/671#issuecomment-621031981
- Remote SSH: https://www.raspberrypi.org/blog/coding-on-raspberry-pi-remotely-with-visual-studio-code/

Terminal Tools:

- neovim
- tmux
- fzf

Configure `neovim`:

TODO

Configure `tmux`:

TODO

Configure fzf:

```
/usr/local/opt/fzf/install
source ~/.zshrc
# https://sourabhbajaj.com/mac-setup/iTerm/fzf.html
```

Postgresql:

```
sudo chown -R $(whoami) /usr/local/lib/pkgconfig
brew install postgresql
pg_ctl -D /usr/local/var/postgres start
pg_ctl -D /usr/local/var/postgres stop
```

MySQL:

```
brew install mysql
mysql.server start
mysql_secure_installation
mysql.server stop
```

MongoDB:

```
brew install mongodb
mongod --config /usr/local/etc/mongod.conf
```

SDKMan / Java:

```
curl -s "https://get.sdkman.io" | bash
source ~/.sdkman/bin/sdkman-init.sh
sdk list java
sdk install java 11.0.3-amzn
```

Golang:

```
brew install go
```

Nodejs with [nvm](https://itsromiljain.medium.com/the-best-way-to-install-node-js-npm-and-yarn-on-mac-osx-4d8a8544987a):

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
command -v nvm
nvm ls-remote --lts
nvm install node # or: nvm install --lts
nvm use node
```

Ruby:

```
gem install bundler
# mkdir foo && cd foo && bundle init # to create Gemfile
```

Python VirtualEnv:

```
sudo -K
easy_install pip
export PIP_REQUIRE_VIRTUALENV=false
export BASH_PROFILE_PATH=~/.bash_profile
pip install virtualenv
pip install virtualenvwrapper
EXTRA_PATH=~/.extra
echo $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "# Source virtualenvwrapper, added by pydata.sh" >> $EXTRA_PATH
echo "export WORKON_HOME=~/.virtualenvs" >> $EXTRA_PATH
echo "source /usr/local/bin/virtualenvwrapper.sh" >> $EXTRA_PATH
echo "" >> $BASH_PROFILE_PATH
source $EXTRA_PATH
```

Python3:

```
cd ~/
brew install python3
mkvirtualenv --python=/usr/local/bin/python3 py3-data
workon py3-data
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas
pip install sympy
pip install nose
pip install unittest2
pip install seaborn
pip install scikit-learn
pip install "ipython[all]"
pip install bokeh
pip install Flask
pip install sqlalchemy
pip install flask-sqlalchemy
pip install requests
pip install boto3
LDFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib" pip install mysqlclient
echo "Usage: workon py3-data"
```

iPython

```
mkdir -p ~/.ipython/profile_default/startup
mkdir -p ~/.ipython/profile_default/static/custom
cd ~/.ipython/profile_default/startup
curl -O https://raw.githubusercontent.com/donnemartin/dev-setup/master/init/profile_default/startup/README
cd ~/.ipython/profile_default/static/custom
curl -O https://raw.githubusercontent.com/donnemartin/dev-setup/master/init/profile_default/static/custom/custom.css
curl -O https://raw.githubusercontent.com/donnemartin/dev-setup/master/init/profile_default/static/custom/custom.js
cd ~/
```

#### BigData

- https://github.com/donnemartin/dev-setup#section-4-big-data-aws-and-heroku-1

#### AWS

- [Granted](https://granted.dev/)
- https://github.com/donnemartin/dev-setup#awesome-aws-

#### Terminal

```
cd ~/
curl -O https://raw.githubusercontent.com/ruanbekker/mac-setup/master/.bash_prompt
curl -O https://raw.githubusercontent.com/ruanbekker/mac-setup/master/.bash_profile
curl -O https://raw.githubusercontent.com/ruanbekker/mac-setup/master/.aliases
```
