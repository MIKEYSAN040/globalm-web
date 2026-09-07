#!/bin/bash

echo "Starting Apache..."

systemctl enable httpd

exit 1

systemctl start httpd

echo "Apache started successfully."
