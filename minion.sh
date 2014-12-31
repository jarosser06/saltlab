#!/bin/bash

apt-get install -y salt-minion salt-ssh
sed -i 's/#master: salt/master: 192.168.10.2/' /etc/salt/minion
sudo service salt-minion restart
