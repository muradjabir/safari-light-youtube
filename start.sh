#!/bin/bash
cd /home/murad/ytm_4s_proxy
source venv/bin/activate
echo "Starting YTM Proxy..."
nohup python app.py > proxy.log 2>&1 &
echo "Server started in the background. PID: $!"
echo "Use ./monitor_logs.sh to view the live logs."
