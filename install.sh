#!/bin/bash
cd ~/Documents
pacman -S ansible git
git clone https://github.com/Gabisonfire/bootstrap.git
cd bootstrap
ansible-galaxy collection install -r collections/requirements.yml
export VAULT_SKIP_VERIFY=true
export VAULT_ADDR=https://vault.k8s.luna.net
export VAULT_TOKEN=$(vault login -token-only -method=ldap username=gabisonfire)
ansible-playbook -i inventory install.yml