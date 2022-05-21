# Slack_Messager

The Slack Messanger has 2 scripts, which can be set to run as part of a bigger codebase or as a service, to inform the user directly in a specific chat of the progress of a task or other use cases.

The two scripts are: 

1. SlackBot_Messanger - Sends a message to the set channel with a set message (parameters can be added to the body)
2. SlackBot_Reply - This script checks for the message and replies to it. This can be used to create a thread, rather than spam the channel. 

The script requires the Bot to be created via the Slack Incoming Webhooks service, steps for this can be found here:
https://api.slack.com/messaging/webhooks
