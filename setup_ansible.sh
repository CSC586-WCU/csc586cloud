#!/bin/bash

cd
git clone https://github.com/do-community/ansible-playbooks.git
cd ansible-playbooks/lamp_ubuntu1804/
cp /local/repository/default.yml vars/
HOST=$(hostname -f)
sed -i "s/HOSTNAME/$HOST/g" vars/default.yml
ansible-playbook playbook.yml -l server1 -u lngo
