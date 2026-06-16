#!/bin/bash

SERVER=$1

scp app/index.html ec2-user@$SERVER:/tmp/

ssh ec2-user@$SERVER << EOF
sudo cp /tmp/index.html /var/www/html/index.html
sudo systemctl restart httpd
EOF
