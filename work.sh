#!/bin/bash
set -e
cd ~/Documents
sudo pacman -S --needed --noconfirm ansible git vault python-pip
pip install hvac --break-system-packages
git clone https://github.com/Gabisonfire/bootstrap.git
cd bootstrap
ansible-galaxy collection install -r collections/requirements.yml
ansible-playbook -i inventory work.yml