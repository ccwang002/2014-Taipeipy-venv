# we are root
sed -i 's/ftp\.uk/ftp\.tw/' /etc/apt/sources.list
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y autoremove

# python stuff
apt-get -y install python3-pip python-virtualenv python3-numpy
apt-get -y build-deps python3-numpy
