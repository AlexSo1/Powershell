$Sipers = get-content C:\setup\users_list.txt

foreach ($Siper in $Sipers) {
    $user = Get-ADUser -Identity $Siper -properties EmailAddress | select EmailAddress,SamAccountName
    $SipAddress = "SIP:" + $User.EmailAddress
    Set-ADUser -Identity $User.SamAccountName -Add @{ProxyAddresses=$SipAddress}
}