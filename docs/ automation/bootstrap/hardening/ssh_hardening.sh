#!/usr/bin/env bash
set -euo pipefail
grep -E '^(PasswordAuthentication|PermitRootLogin)' /etc/ssh/sshd_config || true
