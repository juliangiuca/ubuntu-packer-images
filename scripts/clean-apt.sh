#!/usr/bin/env bash

set -euf -o pipefail

chown ubuntu -R /home/ubuntu/.config
chown ubuntu -R /home/ubuntu/.npm

apt-get autoremove -y
apt-get clean -y

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
