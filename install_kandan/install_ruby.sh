#!/bin/bash

curl -L https://get.rvm.io | bash -s stable

# Set rvm environment variables.  Note: bash profiles have been modified
source ~/.rvm/scripts/rvm

rvm autolibs 1 # Avoid being asked for password
rvm requirements # Misc installs
rvm install ruby-1.9.3
rvm use ruby-1.9.3 --default
rvm rubygems current
gem install bundler
gem install rails 
gem install execjs
## gem install debugger-linecache -v '1.2.0' -- --with-ruby-include=\$rvm_path/src/ruby-1.9.3-p547
## gem update debugger-ruby_core_source
