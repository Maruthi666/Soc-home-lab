# Architecture

## Goal

Build a mini SOC environment that captures endpoint and host telemetry, forwards it to a SIEM, and supports simple detections.

## Topology

- Windows VM: Sysmon logs, event logs, safe test actions.
- Linux VM: admin box, packet capture, hardening, log collection.
- SIEM container: Wazuh or Splunk.
- Optional network sensor: Zeek or tcpdump.

## Data flow

1. Endpoint generates telemetry.
2. Agent or forwarder sends logs.
3. SIEM stores and indexes events.
4. Detection rules match suspicious patterns.
5. Alert is reviewed and documented.

## What this proves

- You understand basic security telemetry.
- You can set up a monitoring pipeline.
- You can validate detections with evidence.
