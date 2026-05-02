#!/usr/bin/env bash

# Install Ruby
sudo apt update
sudo apt install -y ruby-full
gem install bundler --user-install
echo 'export PATH="$HOME/.local/share/gem/ruby/3.2.0/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
bundle config set --local path 'vendor/bundle'

# Install Java
sudo apt update
sudo apt install -y openjdk-17-jdk