#!/bin/bash

# generate passwordless SSH
runuser -u lngo -- ssh-keygen -q -t rsa -f /users/lngo/.ssh/id_rsa -N ''
runuser -u lngo -- cat /users/lngo/.ssh/id_rsa.pub >> /users/lngo/.ssh/authorized_keys
