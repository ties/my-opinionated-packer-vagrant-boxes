#!/bin/bash -eux

# install the backported kernel
apt-get -y update
apt-get -y install linux-image-generic-lts-raring linux-headers-generic-lts-raring

# reboot
echo "Rebooting the machine..."
reboot
sleep 60