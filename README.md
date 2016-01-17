A fork of the ffuenf vagrant boxes with some personal tweaks
============================================================
  * Enable puppet
  * Use lts-generic-utopic kernel on Ubuntu 14.04.1
  * Use a Dutch Ubuntu mirror. Debian should pick the correct mirror by itself.
  * Enable ACL's on the filesystem and use the discard flag
  * `/tmp` on tmpfs

Also:
  * Removed the slack notifications for ffuenf.

2015-06-27:
===================================
===================================
  * remove many shared folders from Parallels boxes
  * `libvirt` provider

Build only the Parallels Trusty box:
====================================
====================================
If the libvirt gem fails to install, check [vagrant-libvirt#346](https://github.com/pradels/vagrant-libvirt/issues/346)
```
bundle install --path vendor
bundle exec thor packer:build --os=ubuntu --os_version=14.04-server --providers=parallels
```

vagrant-boxes
=============
[![GitHub tag](http://img.shields.io/github/tag/ffuenf/vagrant-boxes.svg)][tag]
[![Build Status](http://img.shields.io/travis/ffuenf/vagrant-boxes.svg)][travis]
[![PayPal Donate](https://img.shields.io/badge/paypal-donate-blue.svg)][paypal_donate]
[tag]: https://github.com/ffuenf/vagrant-boxes/tags
[travis]: https://travis-ci.org/ffuenf/vagrant-boxes
[paypal_donate]: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=J2PQS2WLT2Y8W&item_name=dop%3a%20vagrant-boxes&item_number=vagrant-boxes&currency_code=EUR

baseboxes build with packer for use with vagrant.
This repository includes the packer templates to build the baseboxes.
The build boxes are available through

* [Atlas (former Vagrantcloud)](https://atlas.hashicorp.com/ffuenf)
* Amazon S3 (eu-central-1)

Tools
=====

* [vagrant](http://vagrantup.com)
* [packer](http://packer.io)
* [virtualbox](https://www.virtualbox.org/)
* [VMware Fusion](http://www.vmware.com/de/products/fusion/)
* [AWS Command Line Interface](http://aws.amazon.com/cli/)
* [Thor](http://whatisthor.com/)

Usage
=====

Make sure you have the above tools installed.

The following env vars must be present:
* `PACKER_ATLAS_TOKEN` Atlas API Token
* `AWS_ACCESS_KEY_ID` Amazon Webservices KEY-ID
* `AWS_SECRET_ACCESS_KEY` Amazon Webservices ACCESS-KEY

You have to adjust the Thorfile line 50 to match your own S3 bucket.

run the following command to build/upload individual boxes:
```
$ bundle exec thor packer:build \
  --atlas_version=1.0.0 \                 # version tag
  --os=debian \                           # os distribution (debian/ubuntu)
  --os_version=6.0.10 \                   # os version
  --providers=virtualbox,vmware_desktop,parallels # providers to build
```

run the following command to build/upload ALL boxes synchronously:
```
$ ./build_boxes.sh
```

run the following command to delete temporary artifacts
```
$ bundle exec thor packer:clean cache
```

run the following command to delete all local box files
```
$ bundle exec thor packer:clean boxes
```

Boxes
=====

### Ubuntu
#### Ubuntu Wily Werewolf 15.10 Server x86_64

* VMware Tools 10.0.5 build-3228253
* VirtualBox Guest Additions 5.0.10
* Chef 12.6.0-1
* Ruby 1.9.3.194-8.1ubuntu2.1
* Rubygems 2.5.1

| Provider      | URL                                                                                                                                                                                                                                                                                                                                                                                                             |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas         | [ffuenf/ubuntu-15.10-server-amd64](https://atlas.hashicorp.com/ffuenf/ubuntu-15.10-server-amd64)                                                                                                                                                                                                                                                                                                                |
| Virtualbox    | [ubuntu-15.10-server-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion | non functional atm due to https://github.com/ffuenf/vagrant-boxes/pull/22                                                                                                                                                                                                                                                                                                                                       |

---

#### Ubuntu Vivid Vervet 15.04 Server x86_64

* VMware Tools 10.0.5 build-3228253
* VirtualBox Guest Additions 5.0.10
* Chef 12.6.0-1
* Ruby 1.9.3.194-8.1ubuntu2.1
* Rubygems 2.5.1

| Provider      | URL                                                                                                                                                                                                                                                                                                                                                                                                             |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas         | [ffuenf/ubuntu-15.04-server-amd64](https://atlas.hashicorp.com/ffuenf/ubuntu-15.04-server-amd64)                                                                                                                                                                                                                                                                                                                |
| Virtualbox    | [ubuntu-15.04-server-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.04-server-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.04-server-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.04-server-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion | [ubuntu-15.04-server-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.04-server-amd64_vmware.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.04-server-amd64_vmware_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.04-server-amd64_vmware_SHA512SUM)                 |

---

#### Ubuntu Trusty Tahr 14.04.3 Server x86_64

* VMware Tools 10.0.5 build-3228253
* VirtualBox Guest Additions 5.0.10
* Chef 12.6.0-1
* Ruby 1.9.3.484-2
* Rubygems 2.5.1

| Provider      | URL                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas         | [ffuenf/ubuntu-14.04.3-server-amd64](https://atlas.hashicorp.com/ffuenf/ubuntu-14.04.3-server-amd64)                                                                                                                                                                                                                                                                                                                    |
| Virtualbox    | [ubuntu-14.04.3-server-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.3-server-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.3-server-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.3-server-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion | [ubuntu-14.04.3-server-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.3-server-amd64_vmware.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.3-server-amd64_vmware_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.3-server-amd64_vmware_SHA512SUM)                 |

---

### Debian
#### Debian Jessie 8.x

##### Debian Jessie 8.2.0 x86_64

* VMware Tools 10.0.5 build-3228253
* VirtualBox Guest Additions 5.0.10
* Chef 12.6.0-1
* Ruby 1.9.3.194-8.1+deb7u2
* Rubygems 2.5.1

| Provider      | URL                                                                                                                                                                                                                                                                                                                                                                                 |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas         | [ffuenf/debian-8.2.0-amd64](https://atlas.hashicorp.com/ffuenf/debian-8.2.0-amd64)                                                                                                                                                                                                                                                                                                  |
| Virtualbox    | [debian-8.2.0-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.2.0-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.2.0-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.2.0-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion | [debian-8.2.0-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.2.0-amd64_vmware.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.2.0-amd64_vmware_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.2.0-amd64_vmware_SHA512SUM)                 |

#### Debian Wheezy 7.x

##### Debian Wheezy 7.9.0 x86_64

* VMware Tools 10.0.5 build-3228253
* VirtualBox Guest Additions 5.0.10
* Chef 12.6.0-1
* Ruby 1.9.3.194-8.1+deb7u2
* Rubygems 2.5.1

| Provider      | URL                                                                                                                                                                                                                                                                                                                                                                                 |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas         | [ffuenf/debian-7.9.0-amd64](https://atlas.hashicorp.com/ffuenf/debian-7.9.0-amd64)                                                                                                                                                                                                                                                                                                  |
| Virtualbox    | [debian-7.9.0-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.9.0-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.9.0-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.9.0-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion | [debian-7.9.0-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.9.0-amd64_vmware.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.9.0-amd64_vmware_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.9.0-amd64_vmware_SHA512SUM)                 |

---

#### Debian Squeeze 6.x
##### Debian Squeeze 6.0.10 x86_64

* VMware Tools 10.0.5 build-3228253
* VirtualBox Guest Additions 5.0.10
* Chef 12.6.0-1
* Ruby 1.9.2.0-2+deb6u2
* Rubygems 2.5.1

| Provider      | URL                                                                                                                                                                                                                                                                                                                                                                                     |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas         | [ffuenf/debian-6.0.10-amd64](https://atlas.hashicorp.com/ffuenf/debian-6.0.10-amd64)                                                                                                                                                                                                                                                                                                    |
| Virtualbox    | [debian-6.0.10-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-6.0.10-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-6.0.10-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-6.0.10-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion | [debian-6.0.10-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-6.0.10-amd64_vmware.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-6.0.10-amd64_vmware_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-6.0.10-amd64_vmware_SHA512SUM)                 |

---

Testing
=======

The following Thor tasks are provided for automated testing of the cookbook:

```
$ bundle exec thor list
thor packer:build     # Execute the packer builder
thor packer:clean     # Remove temporary artifacts
thor packer:validate  # Validate all the packer templates
```

License and Author
------------------

- Author:: Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)
- Copyright:: 2015, ffuenf

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
