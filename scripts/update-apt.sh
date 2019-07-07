#!/usr/bin/env bash

set -euf -o pipefail

# Set default answer for any questions a package might ask
export DEBIAN_FRONTEND=noninteractive

cp /etc/apt/sources.list /etc/apt/sources.list~
sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
sed -Ei 's/http:\/\/archive.ubuntu.com/http:\/\/us-east-1.ec2.archive.ubuntu.com/' /etc/apt/sources.list

# Retrieve APT package sources
apt-get update -qq

# Install the newest versions of all installed packages
apt-get upgrade -y
