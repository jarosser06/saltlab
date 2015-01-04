#!/bin/bash

yum install -y salt-minion
sed -i 's/#master: salt/master: 192.168.10.2/' /etc/salt/minion
service salt-minion restart
