#!/bin/bash

curl "http://localhost:4741/creatures" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "creature": {
      "name": "'"${name}"'",
      "user_id": "'"${user_id}"'"
    }
  }'

echo
