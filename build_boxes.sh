#!/bin/bash -eux

bundle exec thor packer:build \
  --atlas_version=1.0.21 \
  --os=debian \
  --os_version=6.0.10 \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.21 \
  --os=debian \
  --os_version=7.9.0 \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.21 \
  --os=debian \
  --os_version=8.3.0 \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.21 \
  --os=ubuntu \
  --os_version=14.04.3-server \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.21 \
  --os=ubuntu \
  --os_version=15.04-server \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.21 \
  --os=ubuntu \
  --os_version=15.10-server \
  --providers=virtualbox,parallels
