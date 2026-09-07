#!/bin/bash

echo "Installing website..."

dnf install -y httpd

chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html

echo "Website installation completed."
