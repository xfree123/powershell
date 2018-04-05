# Paste this line first
Write-host "What Port would you like to set for RDP: " -ForegroundColor Yellow -NoNewline;$RDPPort = Read-Host
 
# Paste these two lines next
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-TCP\" -Name PortNumber -Value $RDPPort
New-NetFirewallRule -DisplayName "RDP HighPort" -Direction Inbound –LocalPort $RDPPort -Protocol TCP -Action Allow
 
Write-host "port number is $RDPPORT" -ForegroundColor Magenta
Write-host "Launch RDP with IP:$RDPORT or cmdline MSTSC /V [ip]:$RDPORT"
