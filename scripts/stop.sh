#!/bin/bash

echo "Stopping Apache..."

systemctl stop httpd || true

echo "Apache stopped."
