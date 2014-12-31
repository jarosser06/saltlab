#!/bin/bash

apt-get install -y salt-master salt-syndic salt-ssh
echo "file_roots:" >> /etc/salt/master
echo "  base:" >> /etc/salt/master
echo "    - /srv/salt" >> /etc/salt/master
mkdir -p /srv/salt
service salt-master restart
