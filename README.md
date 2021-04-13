# Homelab

## Description

TODO

## Apps

**See [docs/apps.md](docs/apps.md) to see list of all available apps.**

## Deploy

### Configuration

Edit `homelab.yml` and select what apps you want to use. You will have to modify configuration files for each app accordingly in the `group_vars/homelab/*.yml` files. The default configuration will work out of the box in most cases.

### Vault (passwords)

Next, you will have to create a vault file that contains your passwords. For example, a password for PostgreSQL admin user. To do that, execute the following:

```bash
# Select your editor (optional)
export EDITOR=nano

# You can edit existing vault with 'edit' instead of 'create'
ansible-vault create group_vars/homelab/vault.yml
```

Add the following section:

```yml
---
passwords:
  postgres_admin: password
```

You can generate a random password via `openssl rand -base64 16`

### Deploy with Ansible

After that, simply deploy with the following command. You will have to provide password for sudo and for your vault that contains the passwords.

```bash
ansible-playbook site.yml -v --ask-become-pass --ask-vault-pass
```
