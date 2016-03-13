echo "deb http://perso.corsac.net/~corsac/debian/kernel-grsec/packages/ jessie/" >> /etc/apt/sources.list.d/corsac-kernel-grsec.list
echo "deb-src http://perso.corsac.net/~corsac/debian/kernel-grsec/packages/ jessie/" >> /etc/apt/sources.list.d/corsac-kernel-grsec.list
wget -qO - http://www.corsac.net/71ef0ba8.asc | apt-key add -
apt-get update
