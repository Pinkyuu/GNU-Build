#!/bin/bash

echo "[Unit]
Description=My Service

[Service]
ExecStart=/usr/local/bin/Build-Service.sh
User=root
Group=root
Restart=always
TimeoutStopSec=10

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/Build-Service.service
