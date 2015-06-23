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

#
# https://github.com/Parallels/vagrant-parallels/issues/171
# Parallels mounts ~ folder by default, not able to disable this through prlctl
# -> remove the mount point, disables the behaviour
#
# It is probably possible to still mount the folder by creating the directory and
# mounting, but less feasible.
#
sed --in-place -e 's/exit 0//g' /etc/rc.local
cat >> /etc/rc.local << EOM
if [ -d /media/psf ]; then
  for i in /media/psf/*; do
    if [ -d "${i}" ]; then
      umount "${i}" || true
      rmdir -v "${i}"
    fi
  done
  rmdir -v /media/psf
fi
touch /media/psf && chmod 000 /media/psf

exit 0
EOM

# Create a file with identical name
touch /media/psf && chmod 000 /media/psf
