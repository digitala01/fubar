$loadInfo1 =
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SharePoint.Client")
$loadInfo2 =
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SharePoint.Client.Runtime")
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SharePoint.Client.UserProfiles")
#Must be SharePoint Administrator URL
$webUrl = "https://whitestonereit.sharepoint.com"
$ctx = New-Object Microsoft.SharePoint.Client.ClientContext($webUrl)
$web = $ctx.Web
$username = "cpallitto@whitestonereit.com"
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
$loader.CreatePersonalSiteEnqueueBulk(@("spratt@WhitestoneREIT.com","mguerrero@WhitestoneREIT.com","mcervantes@WhitestoneREIT.com","yrobey-stepanski@WhitestoneREIT.com","nvassar@WhitestoneREIT.com","sspilker@WhitestoneREIT.com","mjohnson@WhitestoneREIT.com","delkins@WhitestoneREIT.com","avieyra@WhitestoneREIT.com","bjohnson@WhitestoneREIT.com","tle@WhitestoneREIT.com","darmstrong@WhitestoneREIT.com","acarbajal@WhitestoneREIT.com","dholeman@WhitestoneREIT.com","lnguyen@WhitestoneREIT.com","msooklal@WhitestoneREIT.com","aelersic@WhitestoneREIT.com","shogan@WhitestoneREIT.com","kcrawford@WhitestoneREIT.com","idjordjevic@WhitestoneREIT.com","dstickney@WhitestoneREIT.com","kparks@WhitestoneREIT.com","jdee@WhitestoneREIT.com","zswanger@WhitestoneREIT.com","baguado@WhitestoneREIT.com","trasmussen@WhitestoneREIT.com","rgomez@WhitestoneREIT.com","vtorres@WhitestoneREIT.com","hyeung@WhitestoneREIT.com","lcarter@WhitestoneREIT.com","tcrichlow@WhitestoneREIT.com","rrupp@WhitestoneREIT.com","elebaron@WhitestoneREIT.com","ccompean@WhitestoneREIT.com","swolters@WhitestoneREIT.com","smcknight@WhitestoneREIT.com","rbarrientos@WhitestoneREIT.com","atomlinson@WhitestoneREIT.com","elopez@WhitestoneREIT.com","msetiawan@WhitestoneREIT.com","aparrish@WhitestoneREIT.com","igastaldi@WhitestoneREIT.com","mgutierrez@WhitestoneREIT.com","aradu@WhitestoneREIT.com","cdavis@WhitestoneREIT.com","cmastandrea@WhitestoneREIT.com","fmazhar@WhitestoneREIT.com","DFigard@WhitestoneREIT.com","kwang@WhitestoneREIT.com","rduran@WhitestoneREIT.com","bho@WhitestoneREIT.com","ccopeland@WhitestoneREIT.com","ckeathly@WhitestoneREIT.com","raronson@WhitestoneREIT.com","cpallitto@WhitestoneREIT.com","rsaravia@WhitestoneREIT.com","kjames@WhitestoneREIT.com","hmemon@WhitestoneREIT.com","msiv@WhitestoneREIT.com","hivy@WhitestoneREIT.com","jmastandrea@WhitestoneREIT.com","tzeck@WhitestoneREIT.com","nGregory@WhitestoneREIT.com","jfields@WhitestoneREIT.com","rrodriguez@WhitestoneREIT.com","dpyne@WhitestoneREIT.com"))
$loader.Context.ExecuteQuery()
Write-Host "COMPLETED"