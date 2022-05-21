#Retrieves the history of the specified group. 
#For extra efficiency, the number at the end can be changed, being the number of messages it retrieves starting with the newest. 
$request=Invoke-RestMethod -Uri <Private slack Token>&"limit=30
$message_ts=0

#this goes into the request object and selects just the messages 
$response=$request.messages

#as the response comes as an array of objects, this for loop iterates trough it and finds the exact message
for($i=0;$i-le $response.Length-1 ;$i++){

if($response[$i].text -eq "<Message Set in the Initial message>" -AND $response[$i].subtype -eq "bot_message"){

#this retrieves the message id(TS value)
$message_ts=$response[$i].ts -join ""

#This creates the thread and sends the specified message
$json = '{"username":"SlackBot","channel":"<Private Channel>","icon_emoji":":Windows:","text":"<Text to Send>","thread_ts":'+'"'+$message_ts+'"'+'}'
Invoke-RestMethod -Uri <Private Slack Token> -Method Post -body $json

 }
}