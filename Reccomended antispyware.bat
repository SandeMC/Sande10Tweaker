echo Disabling Nvidia telemetry

schtasks /change /tn NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} /disable
schtasks /change /tn NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} /disable
schtasks /change /tn NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} /disable
net stop NvTelemetryContainer
sc config NvTelemetryContainer start= disabled
sc stop NvTelemetryContainer

echo Disabling data collection with Task Scheduler

schtasks /change /tn "Microsoft\Windows\Maintenance\WinSAT" /disable
schtasks /change /tn "Microsoft\Windows\Autochk\Proxy" /disable
schtasks /change /tn "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
schtasks /change /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks /change /tn "Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks /change /tn "Microsoft\Windows\PI\Sqm-Tasks" /disable
schtasks /change /tn "Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
schtasks /change /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable
schtasks /change /tn "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable

