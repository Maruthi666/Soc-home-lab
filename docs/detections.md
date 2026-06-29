# Detections

## Detection 1: Suspicious PowerShell
Signal:
- Process creation involving PowerShell with encoded or unusual command line.

## Detection 2: Port scan behavior
Signal:
- Many connection attempts across sequential ports.

## Detection 3: Rare DNS request
Signal:
- DNS request to a domain not normally seen in the lab.

## Detection format
- Rule name
- Severity
- Data source
- Test case
- Expected result
