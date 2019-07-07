#!/usr/bin/env bash

set -euf -o pipefail

NODEJS_VERSION=11

# Set up the latest Node.js repository and add official GPG key
curl -sL "https://deb.nodesource.com/setup_$NODEJS_VERSION.x" | bash -

# Install Node.js and Yarn
apt-get update -qq && apt-get install -y nodejs

# Upgrade to the latest of NPM
npm i -g npm

# Install PM2 process manager
npm i -g pm2
