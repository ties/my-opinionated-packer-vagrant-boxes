Description
===========

baseboxes build with packer for use with vagrant.
This repository includes the packer templates to build the basebox.
The build boxes are available through [Google Drive](https://googledrive.com/host/0B83ZToJ3fGtDWkZET3FnZ0xzQkE) and [Vagrantcloud](https://www.vagrantcloud.com/ffuenf).

Requirements
============

* [vagrant](http://vagrantup.com)
* [packer](http://packer.io)
* [virtualbox](https://www.virtualbox.org/)
* [VMware Fusion](http://www.vmware.com/de/products/fusion/)

Boxes
=====

[SHA512 Checksums](https://googledrive.com/host/0B83ZToJ3fGtDWkZET3FnZ0xzQkE/SHA512SUMS)

### Ubuntu
#### Ubuntu Trusty Tahr 14.x
##### Ubuntu Trusty Tahr 14.04.1 Server x86_64 ([ffuenf/ubuntu-14.04-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-14.04-server-amd64) / [ubuntu-14.04.1-server-amd64_vmware.box](https://googledrive.com/host/0B83ZToJ3fGtDMFFNbnFsVjVKVmc/ubuntu-14.04.1-server-amd64_vmware.box))
* VMware Tools 9.8.3
* Chef 11.16.2-1
* Ruby 1.9.3.484-2
* Rubygems 2.4.1

##### Ubuntu Trusty Tahr 14.04.1 Server x86_64 ([ffuenf/ubuntu-14.04-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-14.04-server-amd64) / [ubuntu-14.04.1-server-amd64_virtualbox.box](https://googledrive.com/host/0B83ZToJ3fGtDMFFNbnFsVjVKVmc/ubuntu-14.04.1-server-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.16
* Chef 11.16.2-1
* Ruby 1.9.3.484-2
* Rubygems 2.4.1

#### Ubuntu Saucy Salamander 13.1x
##### Ubuntu Saucy Salamander 13.10 Server x86_64 ([ffuenf/ubuntu-13.10-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-13.10-server-amd64) / [ubuntu-13.10-server-amd64_vmware.box](https://googledrive.com/host/0B83ZToJ3fGtDcVBKLU1HNTR1bXc/ubuntu-13.10-server-amd64_vmware.box))
* VMware Tools 9.8.3
* Chef 11.16.2-1
* Ruby 1.9.3.194-8.1ubuntu2.1
* Rubygems 2.3.0

##### Ubuntu Saucy Salamander 13.10 Server x86_64 ([ffuenf/ubuntu-13.10-server-amd64](https://www.vagrantcloud.com/ffuenf/ubuntu-13.10-server-amd64) / [ubuntu-13.10-server-amd64_virtualbox.box](https://googledrive.com/host/0B83ZToJ3fGtDcVBKLU1HNTR1bXc/ubuntu-13.10-server-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.16
* Chef 11.16.2-1
* Ruby 1.9.3.194-8.1ubuntu2.1
* Rubygems 2.3.0

---

### Debian
#### Debian Wheezy 7.x

##### Debian Wheezy 7.6.0 x86_64 ([ffuenf/debian-7.6.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.6.0-amd64) / [debian-7.6.0-amd64_vmware.box](https://googledrive.com/host/0B83ZToJ3fGtDVC1DeVVzc3lkc0U/debian-7.6.0-amd64_vmware.box)
* VMware Tools 9.8.3
* Chef 11.16.2-1
* Ruby 1.9.3.194-8.1+deb7u2
* Rubygems 2.4.1

##### Debian Wheezy 7.6.0 x86_64 ([ffuenf/debian-7.6.0-amd64](https://www.vagrantcloud.com/ffuenf/debian-7.6.0-amd64) / [debian-7.6.0-amd64_virtualbox.box](https://googledrive.com/host/0B83ZToJ3fGtDVC1DeVVzc3lkc0U/debian-7.6.0-amd64_virtualbox.box)
* VirtualBox Guest Additions 4.3.16
* Chef 11.16.2-1
* Ruby 1.9.3.194-8.1+deb7u2
* Rubygems 2.4.1

---

#### Debian Squeeze 6.x
##### Debian Squeeze 6.0.10 x86_64 ([ffuenf/debian-6.0.10-amd64](https://www.vagrantcloud.com/ffuenf/debian-6.0.10-amd64) / [debian-6.0.10-amd64_vmware.box](https://googledrive.com/host/0B83ZToJ3fGtDeE9KWm1sWndZdGs/debian-6.0.10-amd64_vmware.box))
* VMware Tools 9.8.3
* Chef 11.16.2-1
* Ruby 1.9.2.0-2+deb6u2
* Rubygems 2.4.1

---

##### Debian Squeeze 6.0.10 x86_64 ([ffuenf/debian-6.0.10-amd64](https://www.vagrantcloud.com/ffuenf/debian-6.0.10-amd64) / [debian-6.0.10-amd64_virtualbox.box](https://googledrive.com/host/0B83ZToJ3fGtDeE9KWm1sWndZdGs/debian-6.0.10-amd64_virtualbox.box))
* VirtualBox Guest Additions 4.3.16
* Chef 11.16.2-1
* Ruby 1.9.2.0-2+deb6u2
* Rubygems 2.4.1

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
