# Initial setup for Ansible
#
# - Enable sudo and add user ansible
# - Copy SSH key from current user to host
# - Harden SSH config - no password, no root, only allow user ansible
# - Remove passwords from local inventory file
#
# Provide the root password when prompted

ansible-playbook -i inventory setup-ansible.yaml --extra-vars "ansible_host_key_checking=false" --ask-become-pass
