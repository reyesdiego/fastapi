#!/bin/bash
set -e
sudo systemctl restart fastapi
sudo systemctl status fastapi --no-pager