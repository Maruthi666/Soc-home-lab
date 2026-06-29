#!/usr/bin/env bash
set -euo pipefail

sudo apt update
sudo apt install -y \
  curl wget git jq vim unzip net-tools dnsutils \
  tcpdump wireshark nmap htop ufw fail2ban docker.io

sudo systemctl enable --now docker
sudo systemctl enable --now fail2ban

mkdir -p ~/soc-home-lab/{docs,lab-notes,sample-data,logs}
echo "Linux host initialized"
