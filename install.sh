#!/bin/bash
set -e
cd ~/Documents
sudo pacman -S --needed --noconfirm ansible git vault python-pip python-boto3
pip install hvac --break-system-packages
git clone https://github.com/Gabisonfire/bootstrap.git
cd bootstrap
ansible-galaxy collection install -r collections/requirements.yml
read -p "AWS_SECRET_ACCESS_KEY: " aws_key
export AWS_ACCESS_KEY_ID=AKIAUYAJUHJKAOMLKM5Y
export AWS_REGION=ca-central-1
AWS_SECRET_ACCESS_KEY=$aws_key ansible-playbook -i inventory install.yml