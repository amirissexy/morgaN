#!/bin/bash

echo "[g2ray] Starting..."

# Start tmux session
tmux kill-session -t g2ray 2>/dev/null || true
tmux new-session -d -s g2ray

# Start Xray
tmux send-keys -t g2ray "/usr/local/bin/xray -c /etc/config.json &>/tmp/xray.log" Enter

sleep 2

echo "[g2ray] Xray started"

# Show link
show-link.sh

echo "[g2ray] Ready"

# Keep container alive
tail -f /dev/null
