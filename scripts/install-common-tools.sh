#!/usr/bin/env bash

set -euf -o pipefail

apt-get install -y software-properties-common

apt-get install -y \
  build-essential \
  software-properties-common apt-transport-https \
  ca-certificates \
  zlib1g-dev \
  libffi-dev \
  gnupg2

apt-get install -y libx11-xcb1 \
  libxrandr2 \
  libasound2 \
  libpangocairo-1.0-0 \
  libatk1.0-0 \
  libatk-bridge2.0-0 \
  libgtk-3-0 \
  libnss3 \
  libxss1

apt-get install -y htop jq awscli curl wget git
