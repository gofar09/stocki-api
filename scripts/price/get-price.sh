curl "http://localhost:4741/prices" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --data '{
    "price": {
      "symbol": "'"SPOT"'"
    }
  }'

echo
