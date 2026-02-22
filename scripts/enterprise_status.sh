#!/bin/bash
# OpenClaw Enterprise Status Monitor

echo "--- CORPORATE STATUS ---"
openclaw status --json | grep "daemon"
openclaw agents list

echo -e "\n--- MARKET ANALYSIS (Leads) ---"
if [ -f "/Users/joy/openclaw-enterprise/sales/memory/leads.json" ]; then
    cat /Users/joy/openclaw-enterprise/sales/memory/leads.json
else
    echo "Sales-Analyst is still scanning/no leads yet."
fi

echo -e "\n--- PRODUCT DEVELOPMENT ---"
ls -la /Users/joy/.openclaw/workspace/docs/
ls -la /Users/joy/.openclaw/workspace/sprint-1.md

echo -e "\n--- ACTIVE OPERATIONS ---"
openclaw logs --n 20
