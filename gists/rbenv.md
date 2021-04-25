```
$ brew update
$ brew install rbenv ruby-build
$ echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
$ source ~/.bash_profile

$ rbenv install --list
$ rbenv install 2.4.6
$ rbenv global 2.4.6
```
