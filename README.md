# SOC Home Lab

A reproducible mini Security Operations Center lab for log collection, detection engineering, and incident-response practice.

## Overview

This repository documents a practical SOC home lab built to simulate endpoint telemetry, ingest logs into a SIEM, create detections, and validate them with safe test activity. The goal is to show real blue-team workflow in a GitHub portfolio.

## Why this project matters

- It demonstrates how logs move from endpoints to a central console.
- It shows how detections are created and tested.
- It gives interviewers something concrete to review: architecture, config, scripts, and findings.

## Lab components

- Ubuntu Linux host or VM.
- Windows endpoint VM.
- Sysmon on Windows.
- Wazuh or Splunk in Docker.
- Optional Zeek or packet capture for network visibility.
- Bash and PowerShell automation.

## Features

- Linux automation scripts for setup and hardening.
- Sysmon configuration for Windows telemetry.
- Sample detection logic for common suspicious behaviors.
- Docker-based SIEM deployment.
- Sample logs and lab notes.

## Architecture

See `docs/architecture.md` for the full topology and data flow.

## Quick start

1. Read `docs/setup-guide.md`.
2. Run `bash automation/bootstrap/ubuntu_init.sh`.
3. Run `bash automation/hardening/ubuntu_harden.sh`.
4. Start the SIEM stack from `infra/docker-compose.yml`.
5. Install Sysmon using `automation/logging/install_sysmon.ps1`.
6. Review detections in `detections/`.

## Folder guide

- `automation/`: Linux and Windows setup scripts.
- `configs/`: Sysmon, SIEM, and lab configs.
- `detections/`: Sigma-style rules and queries.
- `docs/`: setup, hardening, and lab notes.
- `sample-data/`: safe sample events for testing.
- `infra/`: compose files and deployment helpers.
- `lab-notes/`: daily notes and findings.

## Safety

This repository is for defensive, authorized, lab-only use. Do not test on systems you do not own or administer.

## Roadmap

- Add more detections.
- Add more sample events.
- Add a threat-hunting notebook.
- Add cloud logging exercises.

