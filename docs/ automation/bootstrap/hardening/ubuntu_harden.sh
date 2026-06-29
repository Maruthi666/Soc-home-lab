#!/usr/bin/env bash
set -euo pipefail

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp
sudo ufw allow 8000/tcp
sudo ufw allow 5601/tcp
sudo ufw allow 9200/tcp
sudo ufw --force enable

sudo sed -i 's/^#\?PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config || true
sudo systemctl restart ssh || true

echo "Linux hardening applied"
