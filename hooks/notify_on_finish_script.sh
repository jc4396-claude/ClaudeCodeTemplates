#!/bin/bash

# Make this executable with: chmod +x ~/.claude/notify_on_finish_script.sh

# install it by adding the following to your ~/.claude/settings.json or similar;
# this can also be done by using the "claude-based helper" /hooks command
# 
# ```json
# {
#   "hooks": {
#     "PostToolUse": [
#       {
#         "matcher": "*",
#         "hooks": [
#           {
#             "type": "command",
#             "command": "/bin/bash ~/.claude/notify_on_finish_script.sh"
#           }
#         ]
#       }
#     ]
#   }
# }
# ```

# Read the JSON data passed from Claude Code
INPUT=$(cat)

# if you want to see what the json actually looks like, uncomment the following
# this can be used for example to tune the MESSAGE you want to send
# echo "$INPUT" > ~/.claude/json_out.json

# get the MESSAGE to print in the notification
# a message that says which prompt just returned; the description is an AI summary of the prompt
MESSAGE=$(echo "$INPUT" | jq -r ".tool_input.description")

# Send the notification
notify-send "ClaudeCode prompt finished" "$MESSAGE" --icon=terminal
