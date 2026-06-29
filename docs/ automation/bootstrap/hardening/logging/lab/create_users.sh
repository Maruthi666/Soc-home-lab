#!/usr/bin/env bash
set -euo pipefail

sudo useradd -m analyst || true
echo "Created user analyst"
