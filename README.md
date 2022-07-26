# Gab's configs

1. Clone this
2. `ansible-galaxy collection install -r requirements.yml`
3. `export VAULT_SKIP_VERIFY=true`
4. `export VAULT_ADDR=https://vault.k8s.luna.net`
5. `export VAULT_TOKEN=$(vault login -token-only -method=ldap username=gabisonfire)`
6. `ansible-playbook -i inventory install.yml`
