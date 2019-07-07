#!/usr/bin/env bash

set -euf -o pipefail

git clone https://github.com/juliangiuca/logginator.git
git clone https://github.com/juliangiuca/logginator-db.git

cd logginator-db
gem install bundler && bundle

cd ../logginator
npm i
