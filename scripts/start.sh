#!/bin/bash

echo "Starting Apache..."

systemctl enable httpd
systemctl start httpd

echo "Apache started successfully."
