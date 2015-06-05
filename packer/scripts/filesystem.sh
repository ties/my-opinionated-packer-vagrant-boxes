#
# Enable filesystem options
# - ACL's
# - discard flag (might make VM disks more compact)
# - /tmp on tmpfs
#
sed --in-place -e 's/\(.*swap.*sw\)/\1,discard/' /etc/fstab
sed --in-place -e 's/\(.*ext[34].*defaults\)/\1,acl,discard/' /etc/fstab

echo "tmpfs /tmp tmpfs defaults,noatime,nodev,mode=1777,size=1024M 0 0" >> /etc/fstab
rm -rf /tmp/*
mount /tmp
