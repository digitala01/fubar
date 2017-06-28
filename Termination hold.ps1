$Name = Read-Host -Prompt 'Enter Domain Username'
New-MailboxSearch "$Name - Termination" -SourceMailboxes "$Name@whitestonereit.com" -InPlaceHoldEnabled $true