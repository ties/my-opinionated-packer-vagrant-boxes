Description
===========

baseboxes build with veewee/packer for use with vagrant.
This repository includes the veewee/packer templates to build the basebox.
The build boxes are available through Amazon S3 (see links below).

Requirements
============

* [vagrant](http://vagrantup.com)
* [veewee](https://github.com/jedi4ever/veewee) or [packer](http://packer.io)
* [virtualbox](https://www.virtualbox.org/)

Boxes
=====

* Debian Wheezy 7.1.0 x86_64 (VirtualBox Guest Additions 4.2.16, Chef 11.6.0, Puppet 3.2.3): [debian-7.1.0-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/chef-11.6.0/debian-7.1.0-amd64.box)
* Debian Wheezy 7.1.0 x86_64 (VirtualBox Guest Additions 4.2.12, Chef 11.4.4, Puppet 3.1.1): [debian-7.1.0-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian-7.1.0-amd64.box)
* Debian Wheezy 7.0.0 x86_64 (VirtualBox Guest Additions 4.2.12, Chef 11.4.4, Puppet 3.1.1): [debian-7.0.0-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian-7.0.0-amd64.box)
* Debian Squeeze 6.0.7 x86_64 (VirtualBox Guest Additions 4.2.12, Chef 11.4.4, Puppet 3.1.1): [debian-6.0.7-amd64.box](https://s3-eu-west-1.amazonaws.com/ffuenf-vagrant-boxes/debian-6.0.7-amd64.box)

License and Author
==================

- Author:: Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)

- Copyright:: 2013, ffuenf

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.