$Source = Read-Host -Prompt ' Full Enter SourceName'
$Target = Read-Host -Prompt 'Enter Target Username'
Add-MailboxPermission -Identity "$Source" -User $Target -AccessRights FullAccess -InheritanceType All
