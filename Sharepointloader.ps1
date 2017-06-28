$loadInfo1 =
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SharePoint.Client")
$loadInfo2 =
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SharePoint.Client.Runtime")
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SharePoint.Client.UserProfiles")
#Must be SharePoint Administrator URL
$webUrl = "website"
$ctx = New-Object Microsoft.SharePoint.Client.ClientContext($webUrl)
$web = $ctx.Web
$username = "username"
write-host "Please enter your password"
$password = read-host -AsSecureString
$ctx.Credentials = New-Object
Microsoft.SharePoint.Client.SharePointOnlineCredentials($username,$password)
$ctx.Load($web)
$ctx.ExecuteQuery()
$loader
=[Microsoft.SharePoint.Client.UserProfiles.ProfileLoader]::GetProfileLoader($ctx)
#To Get Profile
$profile = $loader.GetUserProfile()
$ctx.Load($profile)
$ctx.ExecuteQuery()
$profile
#To enqueue Profile
$loader.CreatePersonalSiteEnqueueBulk(@(users"))
$loader.Context.ExecuteQuery()
Write-Host "COMPLETED"
