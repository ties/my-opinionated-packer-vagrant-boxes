#!/bin/bash

case "$PACKER_BUILDER_TYPE" in

virtualbox-iso|virtualbox-ovf)
    mkdir /tmp/vbox
    VER=$(cat /home/vagrant/.vbox_version)
    mount -o loop /home/vagrant/VBoxGuestAdditions_$VER.iso /tmp/vbox
    sh /tmp/vbox/VBoxLinuxAdditions.run
    umount /tmp/vbox
    rmdir /tmp/vbox
    rm /home/vagrant/*.iso
    ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
    ;;

vmware-iso|vmware-vmx)
    mkdir -p /tmp/vmfusion;
    mkdir -p /tmp/vmfusion-archive;
    mount -o loop /home/vagrant/linux.iso /tmp/vmfusion;
    tar xzf /tmp/vmfusion/VMwareTools-*.tar.gz -C /tmp/vmfusion-archive;
    /tmp/vmfusion-archive/vmware-tools-distrib/vmware-install.pl --force-install;
    umount /tmp/vmfusion;
    rm -rf  /tmp/vmfusion;
    rm -rf  /tmp/vmfusion-archive;
    rm -f /home/vagrant/*.iso;
    ;;
qemu)
    echo "GRUB_CMDLINE_LINUX=\"serial=tty0 console=ttyS0,115200n8\"" >> /etc/default/grub;
    cat > /etc/init/ttyS0.conf <<-EOD
    # ttyS0 - getty
    #
    # This service maintains a getty on ttyS0 from the point the system is
    # started until it is shut down again.
    
    start on stopped rc RUNLEVEL=[2345]
    stop on runlevel [!2345]
    
    respawn
    exec /sbin/getty -L 115200 ttyS0 xterm
EOD
    ;;
*)
    echo "Unknown Packer Builder Type >>$PACKER_BUILDER_TYPE<< selected."
    echo "Known are virtualbox-iso|virtualbox-ovf|vmware-iso|vmware-ovf|qemu."
    ;;

esac
