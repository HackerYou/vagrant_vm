#!/usr/bin/env bash

if ! which rbenv; then
  echo "====================== INSTALLING RBENV ======================"

  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
  echo 'eval "$(rbenv init -)"' >> ~/.profile
fi;
