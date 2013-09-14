# CHANGELOG for vagrant-boxes

This file is used to list changes made in each version of vagrant-boxes.

## 0.0.7:
### Features
* added Ubuntu Raring Ringtail 13.04 Server x86_64 with [docker.io](http://www.docker.io/) support
* added Ubuntu Precise Pangolin 12.04.3 LTS Server x86_64 with [docker.io](http://www.docker.io/) support
* dropped veewee support - we'll go with packer.io here
* dropped provisioning of puppet - we'll go with chef here
### Bugfixes
* bumped VirtualBox Guest Additions from 4.2.16 to 4.2.18 in Debian Wheezy 7.1.0 x86_64
* reorganized links to boxes on aws/s3
* tweaked the clean task ([thanks chris!](http://chr4.org/blog/2013/08/04/apt-get-cleanup-commands/))

## 0.0.6:
* fixed error with mixlib-shellout-1.2.0 which caused shellout commands in chef-11.4.0 to fail with [BUG] Segmentation fault. We use mixlib-shellout-1.1.0 instead in Debian Squeeze 6.0.7 x86_64

## 0.0.5:
### Features
* added vagrant post-processor to [packer](http://www.packer.io/) templates
* added additional Debian Wheezy 7.1.0 x86_64 (VirtualBox Guest Additions 4.2.16, Chef 11.6.0, Puppet 3.2.3) 
** Chef 11.6.0 adds [support for environments in chef-solo](http://docs.opscode.com/release/11-6/release_notes.html#chef-solo-environments))
** integrated needed kernel params for [docker.io](http://www.docker.io/) according to [this hint](https://github.com/dotcloud/docker/issues/251#issuecomment-20399450)
### Bugfixes
* fixed [packer](http://www.packer.io/) attributes (iso_md5 -> iso_checksum & iso_chechsum_type)
* [GH-#2] packer fails to install VirtualBox Guest Additions (missing XFree86 Window System)

## 0.0.4:
* added templates for [packer](http://www.packer.io/)

## 0.0.3:
* added Debian Wheezy 7.1.0 x86_64

## 0.0.2:
* added Debian Squeeze 6.0.7 x86_64

## 0.0.1:
* Initial release of vagrant-boxes
* added Debian Wheezy 7.0.0 x86_64