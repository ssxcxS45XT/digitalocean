#!/usr/bin/env bash
# vim: set noexpandtab tabstop=2:

user=$1
adduser --disabled-password "$user"
passwd "$user"
mkdir -p /home/"$user"/.ssh
cp /root/.ssh/authorized_keys /home/"$user"/.ssh
chown -R "$user" /home/"$user"/.ssh
chgrp -R "$user" /home/"$user"/.ssh
usermod -aG sudo "$user"
