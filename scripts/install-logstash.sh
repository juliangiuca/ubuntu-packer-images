#!/usr/bin/env bash

set -euf -o pipefail

apt install -y openjdk-11-jre-headless
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

apt-get install -y apt-transport-https
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

apt-get update && sudo apt-get install -y logstash
