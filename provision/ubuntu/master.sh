#!/bin/bash

apt-get install -y salt-master salt-syndic salt-ssh python-git
cat <<'EOF' >> /etc/salt/master
file_roots:
  base:
    - /srv/salt
    - /srv/formulas
pillar_roots:
  base:
    - /srv/pillar
EOF
mkdir -p /srv/salt
service salt-master restart
