#!/usr/bin/env bash

set -euf -o pipefail

sed -Ei 's/^supervised no/supervised systemd/' /etc/apt/sources.list

apt-get install -y redis-server

