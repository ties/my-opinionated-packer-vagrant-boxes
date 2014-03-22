Description
===========

baseboxes build with packer for use with vagrant.
This repository includes the packer templates to build the basebox.
The build boxes are available through [DropBox](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/) and [Vagrantcloud](https://www.vagrantcloud.com/ffuenf).

Requirements
============

* [vagrant](http://vagrantup.com)
* [packer](http://packer.io)
* [virtualbox](https://www.virtualbox.org/)
* [VMware Fusion](http://www.vmware.com/de/products/fusion/)

Boxes
=====

[SHA512 Checksums](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/SHA512SUMS)

### Ubuntu
#### Ubuntu Saucy Salamander 13.1x
##### Ubuntu Saucy Salamander 13.10 Server x86_64 ([ffuenf/ubuntu-13.10-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-13.10-server-amd64) / [ubuntu-13.10-server-amd64_vmware.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/ubuntu/13/10/server-amd64/ubuntu-13.10-server-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

##### Ubuntu Saucy Salamander 13.10 Server x86_64 ([ffuenf/ubuntu-13.10-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-13.10-server-amd64) / [ubuntu-13.10-server-amd64_virtualbox.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/ubuntu/13/10/server-amd64/ubuntu-13.10-server-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

##### Ubuntu Saucy Salamander 13.10 Server x86_64
([ffuenf/ubuntu-13.10-server-amd64_lxc-docker](https://www.vagrantcloud.com/ffuenf/ubuntu-13.10-server-amd64_lxc-docker) / [ubuntu-13.10-server-amd64_lxc-docker_vmware.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/ubuntu/13/10/server-amd64/lxc-docker/ubuntu-13.10-server-amd64_lxc-docker_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1
* lxc-docker 0.9.0

##### Ubuntu Saucy Salamander 13.10 Server x86_64 ([ffuenf/ubuntu-13.10-server-amd64_lxc-docker](https://www.vagrantcloud.com/ffuenf/ubuntu-13.10-server-amd64_lxc-docker) / [ubuntu-13.10-server-amd64_lxc-docker_virtualbox.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/ubuntu/13/10/server-amd64/lxc-docker/ubuntu-13.10-server-amd64_lxc-docker_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1
* lxc-docker 0.9.0

#### Ubuntu Raring Ringtail 13.x
##### Ubuntu Raring Ringtail 13.04 Server x86_64 ([ffuenf/ubuntu-13.04-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-13.04-server-amd64) / [ubuntu-13.04-server-amd64_vmware.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/ubuntu/13/04/server-amd64/ubuntu-13.04-server-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

##### Ubuntu Raring Ringtail 13.04 Server x86_64 ([ffuenf/ubuntu-13.04-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-13.04-server-amd64) / [ubuntu-13.04-server-amd64_virtualbox.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/ubuntu/13/04/server-amd64/ubuntu-13.04-server-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

---

#### Ubuntu Precise Pangolin 12.x
##### Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64
([ffuenf/ubuntu-12.04.4-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-12.04.4-server-amd64) / [ubuntu-13.04-server-amd64_vmware.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/ubuntu/12/04/server-amd64/ubuntu-12.04.4-server-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

##### Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64 
([ffuenf/ubuntu-12.04.4-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-12.04.4-server-amd64) / [ubuntu-13.04-server-amd64_virtualbox.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/ubuntu/12/04/server-amd64/ubuntu-12.04.4-server-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

---

### Debian
#### Debian Wheezy 7.x
##### Debian Wheezy 7.4.0 x86_64 ([ffuenf/debian-7.4.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.4.0-amd64) / [debian-7.4.0-amd64_vmware.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/debian/7/amd64/debian-7.4.0-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

##### Debian Wheezy 7.4.0 x86_64 ([ffuenf/debian-7.4.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.4.0-amd64) / [debian-7.4.0-amd64_virtualbox.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/debian/7/amd64/debian-7.4.0-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

##### Debian Wheezy 7.4.0 x86_64 ([ffuenf/debian-7.4.0-amd64_lxc-docker](https://www.vagrantcloud.com/ffuenf/debian-7.4.0-amd64_lxc-docker) / [debian-7.4.0-amd64_lxc-docker_vmware.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/debian/7/amd64/lxc-docker/debian-7.4.0-amd64_lxc-docker_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1
* lxc-docker 0.9.0

##### Debian Wheezy 7.4.0 x86_64 ([ffuenf/debian-7.4.0-amd64_lxc-docker](https://www.vagrantcloud.com/ffuenf/debian-7.4.0-amd64_lxc-docker) / [debian-7.4.0-amd64_lxc-docker_virtualbox.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/debian/7/amd64/lxc-docker/debian-7.4.0-amd64_lxc-docker_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1
* lxc-docker 0.9.0

##### Debian Wheezy 7.3.0 x86_64 ([ffuenf/debian-7.3.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.3.0-amd64) / [debian-7.3.0-amd64_vmware.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/debian/7/amd64/debian-7.3.0-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

##### Debian Wheezy 7.3.0 x86_64 ([ffuenf/debian-7.3.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.3.0-amd64) / [debian-7.3.0-amd64_virtualbox.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/debian/7/amd64/debian-7.3.0-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

---

#### Debian Squeeze 6.x
##### Debian Squeeze 6.0.9 x86_64 ([ffuenf/debian-6.0.9-amd64](https://www.vagrantcloud.com/ffuenf/debian-6.0.9-amd64) / [debian-6.0.9-amd64_vmware.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/debian/6/amd64/debian-6.0.9-amd64_vmware.box))
* VMware Tools 9.6.1
* Chef 11.10.4-1

---

##### Debian Squeeze 6.0.9 x86_64
([ffuenf/debian-6.0.9-amd64](https://www.vagrantcloud.com/ffuenf/debian-6.0.9-amd64) / [debian-6.0.9-amd64_virtualbox.box](https://dl.dropboxusercontent.com/u/8398/vagrant-boxes/debian/6/amd64/debian-6.0.9-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.8
* Chef 11.10.4-1

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
