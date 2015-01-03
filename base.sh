#!/bin/bash

echo deb http://ppa.launchpad.net/saltstack/salt/ubuntu `lsb_release -sc` main | sudo tee /etc/apt/sources.list.d/saltstack.list
wget -q -O- "http://keyserver.ubuntu.com:11371/pks/lookup?op=get&search=0x4759FA960E27C0A6" | sudo apt-key add -
apt-get update -y

echo -e "192.168.10.2 master\n 192.168.10.3 minion0\n 192.168.10.4 minion1\n" >> /etc/hosts
