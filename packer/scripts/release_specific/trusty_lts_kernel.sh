#!/bin/bash -eux

# ensure the wily kernel is installed.
apt-get install -qy linux-generic-lts-wily linux-headers-generic-lts-wily;
# Remove current kernel (is not autoremoved)
apt-get purge -qy linux-image-generic linux-headers-generic;
reboot;
