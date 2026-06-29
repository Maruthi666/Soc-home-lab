#!/usr/bin/env bash
set -euo pipefail

hostname
uptime
sudo ufw status verbose || true
ss -tulpen || true
