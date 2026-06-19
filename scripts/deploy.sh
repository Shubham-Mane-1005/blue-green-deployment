#!/bin/bash

SERVER=$1

scp -i /var/lib/jenkins/.ssh/jenki_key.pem -o StrictHostKeyChecking=no file ec2-user@$SERVER:/path$SERVER:/tmp/

ssh -i /var/lib/jenkins/.ssh/jenki_key.pem -o StrictHostKeyChecking=no ec2-user@$SERVER<< EOF
sudo cp /tmp/index.html /var/www/html/index.html
sudo systemctl restart httpd
EOF


