#!/bin/bash
cd /home/murad/ytm_4s_proxy
if [ ! -f proxy.log ]; then
    echo "Log file not found. Ensure the server is running."
    exit 1
fi
echo "Tailing proxy.log (Press Ctrl+C to stop)..."
tail -f proxy.log
