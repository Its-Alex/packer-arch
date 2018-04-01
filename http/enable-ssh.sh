#!/usr/bin/env bash

PASSWORD=$(/usr/bin/openssl passwd -crypt 'password')

echo "==> Change root password"
echo -e "password\npassword" | passwd root

echo "==> Enabling SSH"
/usr/bin/systemctl start sshd.service
