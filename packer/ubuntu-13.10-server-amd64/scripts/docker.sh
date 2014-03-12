#!/bin/bash -eux

# enable memory and swap cgroup
perl -p -i -e 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"/g'  /etc/default/grub
/usr/sbin/update-grub

# add docker group and add vagrant to it
groupadd docker
gpasswd -a vagrant docker

# install curl
apt-get -y update
apt-get -y install curl
apt-get -y install linux-image-extra-`uname -r`

# add the docker gpg key
curl https://get.docker.io/gpg | apt-key add -

# Add the Docker repository to your apt sources list.
echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list

# Update your sources
apt-get -y update

# Install. Confirm install.
apt-get -y install lxc-docker