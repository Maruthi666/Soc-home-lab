# Setup Guide

## Prerequisites

- Ubuntu 22.04 or similar Linux host.
- VirtualBox or VMware.
- Docker and Docker Compose.
- Windows VM for Sysmon.
- Git.

## Steps

### 1. Prepare Linux host
Run:

```bash
bash automation/bootstrap/ubuntu_init.sh
bash automation/hardening/ubuntu_harden.sh
```

### 2. Start SIEM
Run:

```bash
docker compose -f infra/docker-compose.yml up -d
```

### 3. Prepare Windows endpoint
- Install Sysmon.
- Apply the config in `configs/sysmon-config.xml`.
- Verify event logs are generated.

### 4. Validate telemetry
- Run safe test commands.
- Confirm logs are visible in the SIEM.

### 5. Document results
- Save screenshots under `docs/screenshots/`.
- Add notes to `lab-notes/`.

## Notes

Keep passwords out of GitHub. Use placeholders in sample files.
