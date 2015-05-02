#!/bin/bash

bundle exec thor packer:build \
  --atlas_version=1.0.8 \
  --os=debian \
  --os_version=6.0.10 \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.8 \
  --os=debian \
  --os_version=7.8.0 \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.8 \
  --os=debian \
  --os_version=8.0.0 \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.8 \
  --os=ubuntu \
  --os_version=14.04.2-server \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.8 \
  --os=ubuntu \
  --os_version=14.10-server \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.8 \
  --os=ubuntu \
  --os_version=15.04-server \
  --providers=virtualbox,vmware,parallels