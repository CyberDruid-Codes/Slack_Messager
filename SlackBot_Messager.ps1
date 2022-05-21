Try{
	
$json = '{"username":"SlackBot","channel":"<private channel>","icon_emoji":":Windows:","text":"<Insert Text for the Request to send."}';
Invoke-RestMethod -Uri <Slack private token> -Method Post -body $json
}
catch{Write-host "Slack failed with: " $Error}