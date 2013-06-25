#!/usr/bin/env bash

if [ $(rbenv global) != "2.0.0-p195" ]; then
  echo "====================== INSTALLING RUBY ======================"

  rbenv install 2.0.0-p195
  rbenv global 2.0.0-p195
fi;

if ! which rails; then
  echo "====================== INSTALLING RAILS ======================"

  gem install rails --no-rdoc --no-ri
  rbenv rehash

  rails new foo
  rm -rf foo
fi;
