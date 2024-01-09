#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title outlook-deeplink
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName outlook

# Documentation:
# @raycast.description Uses outlook URL stored in macos clipboard to transform to deeplink, and put back on clipboard
# @raycast.author the-t
# @raycast.authorURL github.com/dtger

pbpaste | sed -E 's|.+\/(.+)|https:\/\/outlook.office.com\/mail\/deeplink\/readconv\/\1|g' | pbcopy

