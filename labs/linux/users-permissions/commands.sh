#!/usr/bin/env bash

#show current user and ids
whoami
id
#inspect user databases
sudo cat /etc/passwd
sudo cat /etc/shadow
#create user + password
sudo useradd -m -s /bin/bash testuser
sudo passwd testpassword
#create group + add user to group
sudo groupadd dev-team
sudo usermod -aG dev-team testuser
#verify membership
group testuser
id testuser
#permissions/ownership demo
touch demo.txt
ls -l demo.txt
chmod 766 demo.txt
chown testuser:dev-group demo.txt
ls -l demo.txt
