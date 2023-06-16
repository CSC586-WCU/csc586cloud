#!/bin/bash

apt update
apt install -y nfs-common
mkdir -p /var/nfs/keys

while [ ! -f /var/nfs/keys/id_rsa ]; do
  mount 192.168.1.1:/var/nfs/keys /var/nfs/keys
  sleep 10
done

cp /var/nfs/keys/id_rsa* /users/lngo/.ssh/
chown lngo: /users/lngo/.ssh/id_rsa*
runuser -u lngo -- cat /users/lngo/.ssh/id_rsa.pub >> /users/lngo/.ssh/authorized_keys
