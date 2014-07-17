#!/bin/bash
# Assume /opt/kandanapp exists

source ~/.profile
source ~/.rvm/scripts/rvm
export PATH="$PATH:~/.rvm/bin"
cd /opt/kandanapp
which gem > /home/tal/which_gem
gem update debugger-ruby_core_source
bundle install
#bundle exec
bundle exec rake db:create db:migrate kandan:bootstrap
