#!/bin/bash
set -e

bundle install
bundle exec rake assets:precompile
bundle exec rake db:migrate
