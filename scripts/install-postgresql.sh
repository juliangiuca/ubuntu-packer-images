#!/usr/bin/env bash

set -euf -o pipefail

sudo apt-get install -y libpq-dev postgresql postgresql-contrib

sudo -u postgres createuser -S -d -R -e ubuntu
