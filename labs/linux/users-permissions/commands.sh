#!/usr/bin/env bash

# stop script if any command fails
set -e

echo "Current user:"
whoami

echo "User ID and groups:"
id

echo "Inspect user database"
sudo cat /etc/passwd | tail -5

echo "Create new user"
sudo useradd -m -s /bin/bash testuser

echo "Set password for testuser"
sudo passwd testuser

echo "Create group"
sudo groupadd dev-team

echo "Add user to group"
sudo usermod -aG dev-team testuser

echo "Verify membership"
groups testuser
id testuser

echo "Create test file"
touch demo.txt

echo "Check file permissions"
ls -l demo.txt

echo "Change permissions"
chmod 760 demo.txt

echo "Change ownership"
sudo chown testuser:dev-team demo.txt

echo "Final file state"
ls -l demo.txt

echo "Lab completed"
