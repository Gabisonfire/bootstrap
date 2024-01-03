# Gab's configs
## Auto
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Gabisonfire/bootstrap/master/install.sh)"

## Manual
1. Clone this
2. `ansible-galaxy collection install -r requirements.yml`
3. `export AWS_ACCESS_KEY_ID=AKIAUYAJUHJKAOMLKM5Y`
4. `export AWS_REGION=ca-central-1`
5. `AWS_SECRET_ACCESS_KEY=my_secret_key ansible-playbook -i inventory install.yml`
