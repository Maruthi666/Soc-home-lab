#!/usr/bin/env bash
set -euo pipefail

mkdir -p sample-data
cat > sample-data/sample-sysmon.json <<'JSON'
{"EventID":1,"Image":"powershell.exe","CommandLine":"powershell -enc <sanitized>"}
JSON
echo "Generated safe sample log"
