Description
===========

baseboxes build with packer for use with vagrant.
This repository includes the packer templates to build the basebox.
The build boxes are available through Amazon S3 and Vagrantcloud.

Requirements
============

* [vagrant](http://vagrantup.com)
* [packer](http://packer.io)
* [virtualbox](https://www.virtualbox.org/)
* [VMware Fusion](http://www.vmware.com/de/products/fusion/)

Boxes
=====

### Ubuntu
#### Ubuntu Saucy Salamander 13.1x
##### Ubuntu Saucy Salamander 13.10 Server x86_64 ([ffuenf/ubuntu-13.10-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-13.10-server-amd64) / [ubuntu-13.10-server-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/ubuntu/ubuntu-13.10-server-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

##### Ubuntu Saucy Salamander 13.10 Server x86_64 ([ffuenf/ubuntu-13.10-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-13.10-server-amd64) / [ubuntu-13.10-server-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/ubuntu/ubuntu-13.10-server-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

#### Ubuntu Raring Ringtail 13.x
##### Ubuntu Raring Ringtail 13.04 Server x86_64 ([ffuenf/ubuntu-13.04-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-13.04-server-amd64) / [ubuntu-13.04-server-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/ubuntu/ubuntu-13.04-server-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

##### Ubuntu Raring Ringtail 13.04 Server x86_64 ([ffuenf/ubuntu-13.04-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-13.04-server-amd64) / [ubuntu-13.04-server-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/ubuntu/ubuntu-13.04-server-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

---

#### Ubuntu Precise Pangolin 12.x
##### Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64 ([ffuenf/ubuntu-12.04.4-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-12.04.4-server-amd64) / [ubuntu-12.04.4-server-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/ubuntu/ubuntu-12.04.4-server-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

##### Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64 ([ffuenf/ubuntu-12.04.4-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-12.04.4-server-amd64) / [ubuntu-12.04.4-server-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/ubuntu/ubuntu-12.04.4-server-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

---

### Debian
#### Debian Wheezy 7.x
##### Debian Wheezy 7.4.0 x86_64 ([ffuenf/debian-7.4.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.4.0-amd64) / [debian-7.4.0-amd64_vmware.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/debian-7.4.0-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

##### Debian Wheezy 7.4.0 x86_64 ([ffuenf/debian-7.4.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.4.0-amd64) / [debian-7.4.0-amd64_virtualbox.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/debian-7.4.0-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

##### Debian Wheezy 7.3.0 x86_64 ([ffuenf/debian-7.3.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.3.0-amd64) / [debian-7.3.0-amd64_vmware.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/debian-7.3.0-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

##### Debian Wheezy 7.3.0 x86_64 ([ffuenf/debian-7.3.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.3.0-amd64) / [debian-7.3.0-amd64_virtualbox.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/debian-7.3.0-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

##### Debian Wheezy 7.3.0 x86_64 ([debian-7.3.0-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/debian-7.3.0-amd64.box))
* VirtualBox Guest Additions 4.3.6
* Chef 11.8.2

---

##### Debian Wheezy 7.2.0 x86_64 ([ffuenf/debian-7.2.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.2.0-amd64) / [debian-7.2.0-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/debian-7.2.0-amd64.box))
* VirtualBox Guest Additions 4.3.4
* Chef 11.8.2

---

##### Debian Wheezy 7.1.0 x86_64 ([ffuenf/debian-7.1.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.1.0-amd64) / [debian-7.1.0-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/debian-7.1.0-amd64.box))
* VirtualBox Guest Additions 4.2.18
* Chef 11.6.0

---

##### Debian Wheezy 7.1.0 x86_64 ([debian-7.1.0-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/chef-11.4.4/debian-7.1.0-amd64.box))
* VirtualBox Guest Additions 4.2.12
* Chef 11.4.4
* Puppet 3.1.1

---

##### Debian Wheezy 7.0.0 x86_64 ([ffuenf/debian-7.0.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.0.0-amd64) / [debian-7.0.0-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/chef-11.4.4/debian-7.0.0-amd64.box))
* VirtualBox Guest Additions 4.2.12
* Chef 11.4.4
* Puppet 3.1.1

---

#### Debian Squeeze 6.x
##### Debian Squeeze 6.0.7 x86_64 ([ffuenf/debian-6.0.7-amd64](https://www.vagrantcloud.com/ffuenf/debian-6.0.7-amd64) / [debian-6.0.7-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/chef-11.4.0/debian-6.0.7-amd64.box))
* VirtualBox Guest Additions 4.2.16
* Chef 11.4.0

---

##### Debian Squeeze 6.0.7 x86_64 ([debian-6.0.7-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian/chef-11.4.4/debian-6.0.7-amd64.box))
* VirtualBox Guest Additions 4.2.12
* Chef 11.4.4
* Puppet 3.1.1

---

License and Author
==================

- Author:: Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)

- Copyright:: 2014, ffuenf

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
