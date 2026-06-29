$ErrorActionPreference = "Stop"

Invoke-WebRequest -Uri "https://download.sysinternals.com/files/Sysmon.zip" -OutFile "Sysmon.zip"
Expand-Archive .\Sysmon.zip -DestinationPath .\Sysmon -Force
.\Sysmon\Sysmon64.exe -accepteula -i .\sysmon_config.xml
