$From = ''
$To = ''
Export-DhcpServer -File C:\Setup\DHCP\DHCPdata.xml -Leases -Force -Computer $From –Verbose
Import-DhcpServer -File C:\Setup\DHCP\DHCPdata.xml -BackupPath C:\DHCP\ -Leases -ScopeOverwrite -Force -Computer $To –Verbose