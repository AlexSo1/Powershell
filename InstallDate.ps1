$computers = Get-Content 'C:\setup\servers.txt'
foreach ($computer in $computers) {
if (test-Connection -Cn $computer -quiet) 
{$os = Get-WmiObject Win32_OperatingSystem -ComputerName $computer 
Write-Host "$computer " $os.ConvertToDateTime($os.InstallDate)}
else {"$computer недоступен"} 
} 

