#!/bin/bash
#set -e

#cd /var/www/fastapi-app

set -euo pipefail

APP_DIR="/var/www/fastapi-app"
SERVICE_SRC="$APP_DIR/deploy/fastapi.service"
SERVICE_DST="/etc/systemd/system/fastapi.service"

cd "$APP_DIR"

python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

install -m 644 "$SERVICE_SRC" "$SERVICE_DST"
systemctl daemon-reload
systemctl enable fastapi