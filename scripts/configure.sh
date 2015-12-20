#!/bin/bash

usermod -a -G apache ec2-user
chown -R apache:apache /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} +
