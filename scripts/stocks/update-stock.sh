#!/bin/bash

curl "http://localhost:4741/stocks/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "stock": {
      "symbol": "'"${SYMBOL}"'",
      "name": "'"${NAME}"'",
      "shares": "'${SHARES}'"
    }
  }'

echo
