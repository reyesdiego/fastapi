#!/bin/bash
set -e

cd /var/www/fastapi-app

python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt