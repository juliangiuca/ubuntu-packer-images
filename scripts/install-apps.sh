#!/usr/bin/env bash

set -euf -o pipefail

git clone https://github.com/juliangiuca/logginator.git
git clone https://github.com/juliangiuca/logginator-db.git

RAILS_ENV=production

cd logginator-db && \
  gem install bundler && bundle && \
  rake db:create && \
  rake db:migrate && \
  rake db:seed

cd ../logginator
npm i
