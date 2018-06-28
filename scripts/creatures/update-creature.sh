#!/bin/bash

curl "http://localhost:4741/creatures/${id}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "creature": {
      "name": "'"${name}"'",
      "cr": "'"${cr}"'",
      "user_id": "'"${user_id}"'"
    }
  }'

echo
