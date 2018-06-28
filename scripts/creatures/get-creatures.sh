#!/bin/bash

curl "http://localhost:4741/creatures" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
