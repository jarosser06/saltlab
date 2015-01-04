#!/bin/bash

apt-get install -y salt-master salt-syndic salt-ssh python-git
cat <<'EOF' >> /etc/salt/master
file_roots:
  base:
    - /srv/salt
    - /srv/formulas
EOF
mkdir -p /srv/salt
service salt-master restart
