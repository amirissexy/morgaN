#!/bin/bash

CONFIG="/etc/config.json"


SNI="${CODESPACE_NAME}-443.app.github.dev"


LINK="vless://425b979f-56da-40d9-95d0-c42008b6bf0f@85.10.207.48:443?encryption=none&security=tls&type=xhttp&mode=packet-up&sni=${SNI}&path=%2F#AmiR"
echo ""
echo "====================AMIR====================="
echo "  $LINK"
echo "=============================================="
echo ""

# SEND TO TELEGRAM
BOT_TOKEN="7703789964:AAEX-__28gX5ZkuKWwshXOIYlleWCGwvEso"
CHAT_ID="6857517234"

curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
  -d chat_id="${CHAT_ID}" \
  --data-urlencode text="$LINK" > /dev/null 2>&1
