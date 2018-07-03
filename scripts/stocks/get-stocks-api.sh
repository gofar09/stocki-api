#!/bin/bash

curl "https://www.alphavantage.co/query?function=BATCH_STOCK_QUOTES&symbols=SPOT,FB,AAPL,TSLA&apikey=LJVNN3W1ZUYE40G" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo
