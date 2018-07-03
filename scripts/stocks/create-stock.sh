#!/bin/bash

curl "http://localhost:4741/stocks" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "stock": {
      "symbol": "'"SPOT"'",
      "name": "'"Spotify"'",
      "shares": "'9'",
      "user_id": "'${ID}'"
    }
  }'

echo
