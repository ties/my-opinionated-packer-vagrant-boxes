cat > /etc/rc.local << EOF
#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

# Powertop tweaks
# Set sata hosts to min_power
for HOST in \`ls /sys/class/scsi_host/\`
do
	echo min_power > /sys/class/scsi_host/\${HOST}/link_power_management_policy
done

# Set PCI devices to auto powering
for DEVICE in \`ls /sys/bus/pci/devices/\`
do
        echo "auto" > /sys/bus/pci/devices/\${DEVICE}/power/control
done

for DEVICE in \`ls /sys/bus/usb/devices/\`
do
	if [ -e /sys/bus/usb/devices/\${DEVICE}/power/control ]
	then
		echo "auto" > /sys/bus/usb/devices/\${DEVICE}/power/control
	fi
done

echo 0 > /proc/sys/kernel/nmi_watchdog
echo 1500 > /proc/sys/vm/dirty_writeback_centisecs

for IF in \`basename -a \$(ls /sys/devices/**/net/* -d)\`
do
	ethtool -s \$IF wol d
done

exit 0
EOF

chmod +x /etc/rc.local
