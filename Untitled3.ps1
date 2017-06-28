$Name = Read-Host -Prompt 'Enter Domain Username'
Set-MsolUserLicense -UserPrincipalName $Name -RemoveLicenses