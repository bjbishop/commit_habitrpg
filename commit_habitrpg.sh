#!/usr/bin/env bash

# quit and do nothing if the secrets file is missing
[[ -f ~/.secrets/habitrpg.sh ]] || exit 0

source ~/.secrets/habitrpg.sh

\curl -s -X POST -H "x-api-key: $HABITRPG_API_KEY" -H "x-api-user: $HABITRPG_API_USER" https://habitica.com/api/v3/tasks/$COMMIT_TASK_ID/score/up
