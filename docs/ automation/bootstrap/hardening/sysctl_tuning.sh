#!/usr/bin/env bash
set -euo pipefail

cat <<'EOF' | sudo tee /etc/sysctl.d/99-soc-lab.conf >/dev/null
net.ipv4.ip_forward=0
net.ipv4.conf.all.accept_redirects=0
net.ipv4.conf.all.send_redirects=0
net.ipv4.conf.all.accept_source_route=0
EOF

sudo sysctl --system
