#!/bin/bash -eux

bundle exec thor packer:build \
  --atlas_version=1.0.23 \
  --os=debian \
  --os_version=8.3.0 \
  --providers=qemu

bundle exec thor packer:build \
  --atlas_version=1.0.23 \
  --os=debian \
  --os_version=8.3.0-puppet4 \
  --providers=qemu

bundle exec thor packer:build \
  --atlas_version=1.0.23 \
  --os=ubuntu \
  --os_version=14.04.4-puppet4-server \
  --providers=qemu

bundle exec thor packer:build \
  --atlas_version=1.0.23 \
  --os=ubuntu \
  --os_version=14.04.4-server \
  --providers=qemu
