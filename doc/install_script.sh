apt-get -y install apache2
a2enmod ssl
apt-get -y install php libapache2-mod-php
systemctl restart apache2
systemctl enable apache2

ip link set ens160 mtu 9000
