#!/bin/bash

# call using ID=1 sh scripts/stocks/delete-stock.sh

curl "http://localhost:4741/stocks/${ID}" \
  --include \
  --request DELETE \

echo
