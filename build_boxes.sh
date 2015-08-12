#!/bin/bash

bundle exec thor packer:build \
  --atlas_version=1.0.12 \
  --os=debian \
  --os_version=6.0.10 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.12 \
  --os=debian \
  --os_version=7.8.0 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.12 \
  --os=debian \
  --os_version=8.0.0 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.12 \
  --os=debian \
  --os_version=8.1.0 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.12 \
  --os=ubuntu \
  --os_version=14.04.3-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.12 \
  --os=ubuntu \
  --os_version=14.10-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.12 \
  --os=ubuntu \
  --os_version=15.04-server \
  --providers=virtualbox,vmware