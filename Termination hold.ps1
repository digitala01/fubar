$Name = Read-Host -Prompt 'Enter Domain Username'
New-MailboxSearch "$Name - Termination" -SourceMailboxes "$name@domain" -InPlaceHoldEnabled $true
