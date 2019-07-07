#!/usr/bin/env bash

set -euf -o pipefail

git clone https://github.com/juliangiuca/logginator.git
git clone https://github.com/juliangiuca/logginator-db.git

cd logginator-db
bundle

cd ../logginator
npm i
