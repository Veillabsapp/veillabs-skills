#!/bin/bash
# veillabs-client.sh
# Helper script to make API calls to Veillabs

BASE_URL="${VEILLABS_BASE_URL:-https://veillabs.app}"

if [ -z "$1" ]; then
  echo "Usage: ./veillabs-client.sh <endpoint> [method] [body]"
  echo "Example: ./veillabs-client.sh /api/currencies"
  exit 1
fi

ENDPOINT=$1
METHOD=${2:-GET}
BODY=$3

if [ "$METHOD" = "GET" ]; then
  curl -s -X GET "$BASE_URL$ENDPOINT"
else
  curl -s -X "$METHOD" "$BASE_URL$ENDPOINT" -H "Content-Type: application/json" -d "$BODY"
fi
