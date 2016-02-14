#!/bin/bash -eux

# Use compressed APT indexes (from: <https://github.com/tianon/docker-brew-ubuntu-core/issues/1>)
echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/02compress-indexes

apt-get update
apt-get -qy upgrade

# ensure the correct kernel headers are installed
apt-get -qy install linux-headers-$(uname -r)

# update package index on boot
cat <<EOF > /etc/init/refresh-apt.conf
description "update package index"
start on networking
task
exec /usr/bin/apt-get update
EOF

# install rsync
apt-get -qy install rsync acl
