#
# Enable filesystem options
# - ACL's
# - discard flag (might make VM disks more compact)
# - /tmp on tmpfs
#
sed --in-place -e 's/\(.*swap.*sw\)/\1,discard/g' /etc/fstab
sed --in-place -e 's/\(defaults\)/\1,acl,discard/g' /etc/fstab
mount -o remount /

echo "tmpfs /tmp tmpfs defaults,noatime,nodev,mode=1777,size=1024M 0 0" >> /etc/fstab
rm -rf /tmp/*
mount /tmp
