# we are root
sed -i 's/ftp\.uk/ftp\.tw/' /etc/apt/sources.list
apt-get update
# apt-get -y upgrade
# apt-get -y dist-upgrade
# apt-get -y autoremove

# python stuff
apt-get install -y python3-pip python-virtualenv python3-numpy git-core
# apt-get build-dep -y python3-numpy

cat >> /home/vagrant/.profile <<EOF
export PIP_USE_WHEEL="true"
export PIP_DOWNLOAD_CACHE="$HOME/.pip/cache"
EOF
