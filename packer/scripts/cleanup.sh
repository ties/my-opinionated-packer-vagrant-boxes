#!/bin/bash -eux

# Clean up
apt-get -qy --purge remove linux-headers-$(uname -r) build-essential
apt-get -qy --purge autoremove
apt-get -qy purge $(dpkg --list |grep '^rc' |awk '{print $2}')
apt-get -qy purge $(dpkg --list |egrep 'linux-image-[0-9]' |awk '{print $3,$2}' |sort -nr |tail -n +2 |grep -v $(uname -r) |awk '{ print $2}')
apt-get -qy clean

# delete linux source
dpkg --list | awk '{ print $2 }' | grep linux-source | xargs apt-get -qy purge

# delete development packages
dpkg --list | awk '{ print $2 }' | grep -- '-dev$' | xargs apt-get -qy purge

# delete compilers and other development tools
apt-get -qy purge cpp gcc g++

# delete X11 libraries
apt-get -qy purge libx11-data xauth libxmuu1 libxcb1 libx11-6 libxext6

# delete obsolete networking
apt-get -qy purge ppp pppconfig pppoeconf

# delete oddities
apt-get -qy purge popularity-contest

# Cleanup Virtualbox
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?

# Cleanup Chef
rm -f /tmp/chef*deb

# Remove unused locales
rm -rf /usr/share/locale/{af,am,ar,as,ast,az,bal,be,bg,bn,bn_IN,br,bs,byn,ca,cr,cs,csb,cy,da,de,de_AT,dz,el,en_AU,en_CA,eo,es,et,et_EE,eu,fa,fi,fo,fr,fur,ga,gez,gl,gu,haw,he,hi,hr,hu,hy,id,is,it,ja,ka,kk,km,kn,ko,kok,ku,ky,lg,lt,lv,mg,mi,mk,ml,mn,mr,ms,mt,nb,ne,nl,nn,no,nso,oc,or,pa,pl,ps,pt,pt_BR,qu,ro,ru,rw,si,sk,sl,so,sq,sr,sr*latin,sv,sw,ta,te,th,ti,tig,tk,tl,tr,tt,ur,urd,ve,vi,wa,wal,wo,xh,zh,zh_HK,zh_CN,zh_TW,zu}

# Remove docs
rm -rf /usr/share/doc

# Remove files from cache
find /var/cache -type f -delete -print

# Remove guest addition source
rm -rf /usr/src/virtualbox-ose-guest*
rm -rf /usr/src/vboxguest*

# Remove man pages
rm -rf /usr/share/man/??
rm -rf /usr/share/man/??_*

# remove files from cache
find /var/cache -type f -delete

# delete out of date apt caches
find /var/lib/apt/lists \! -name lock -type f -delete

# Remove history file
unset HISTFILE
rm -f ~/.bash_history /home/vagrant/.bash_history

set +e
swapuuid="`/sbin/blkid -o value -l -s UUID -t TYPE=swap`";
case "$?" in
    2|0) ;;
    *) exit 1 ;;
esac
set -e

if [ "x${swapuuid}" != "x" ]; then
    # Whiteout the swap partition to reduce box size
    # Swap is disabled till reboot
    swappart="`readlink -f /dev/disk/by-uuid/$swapuuid`";
    /sbin/swapoff "$swappart";
    dd if=/dev/zero of="$swappart" bs=1M || echo "dd exit code $? is suppressed";
    /sbin/mkswap -U "$swapuuid" "$swappart";
fi

dd if=/dev/zero of=/EMPTY bs=1M || echo "dd exit code $? is suppressed";
rm -f /EMPTY;

# Try to trim - older versions of fstrim do not support -a
fstrim / || true;
fstrim -a || true;
# Balance btrfs - but no hard failure.
btrfs balance start / || true;
sleep 5;
# Block until the empty file has been removed, otherwise, Packer
# will try to kill the box while the disk is still full and that's bad
sync;
