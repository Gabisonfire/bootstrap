#!/bin/bash
cd ~/Documents
git clone git@github.com:Gabisonfire/bootstrap.git
cd bootstrap
ansible-galaxy collection install -r requirements.yml
export VAULT_SKIP_VERIFY=true
export VAULT_ADDR=https://vault.k8s.luna.net
export VAULT_TOKEN=$(vault login -token-only -method=ldap username=gabisonfire)
ansible-playbook -i inventory install.yml