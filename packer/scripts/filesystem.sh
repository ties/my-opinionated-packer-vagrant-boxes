#
# Enable filesystem options
# - ACL's
# - discard flag (might make VM disks more compact)
# - /tmp on tmpfs
#
sed --in-place -e 's/\(.*swap.*sw\)/\1,discard/g' /etc/fstab
sed --in-place -e 's/\(ext4[[:space:]]\+\)/\1acl,discard,/g' /etc/fstab
sed --in-place -e 's/\(btrfs[[:space:]]\+\)/\1ssd,discard,compress=lzo,/g' /etc/fstab

cat >> /etc/fstab << EOF
tmpfs /tmp tmpfs defaults,noatime,nodev,mode=1777,size=1024M 0 0
EOF

rm -rf /tmp/*;
reboot;
