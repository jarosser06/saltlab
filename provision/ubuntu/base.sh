#!/bin/bash

echo deb http://ppa.launchpad.net/saltstack/salt/ubuntu `lsb_release -sc` main | sudo tee /etc/apt/sources.list.d/saltstack.list
wget -q -O- "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x4759FA960E27C0A6" | sudo apt-key add -
apt-get update -y
