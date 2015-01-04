#!/bin/bash

cat <<'EOF' >> /etc/hosts
192.168.10.2 master
192.168.10.3 minion1
192.168.10.4 minion2
EOF
