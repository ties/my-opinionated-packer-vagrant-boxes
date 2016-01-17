#!/bin/bash -eux

apt-get -q -y install unzip

serf_version=0.6.4
wget -q "https://releases.hashicorp.com/serf/${serf_version}/serf_${serf_version}_linux_amd64.zip" \
     -O /tmp/packer-${serf_version}.zip
(cd /tmp && unzip -o -qq serf-$serf_version.zip -d /usr/local/bin/)
rm -rf /tmp/serf-${serf_version}.zip