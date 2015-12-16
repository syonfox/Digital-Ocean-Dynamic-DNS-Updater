#!/bin/bash

#installing depencencys
apt-get update
apt-get install -y php5 php5-curl

#adds a user so that we dont have it runing as root
useradd -r dyndns -s /sbin/nologin

#makes a folser for the ip variable
mkdir /opt/dyndns

cp updater.php /opt/dyndns/updater.php

chmod +x /opt/dyndns/updater.php

#makes for folder owned by our dyndns user
chown -R dyndns /opt/dyndns 

#makes a file for the cron jobs
touch /etc/cron.d/dyndns

cp adddyndns /usr/local/bin/adddyndns

chmod +x /usr/local/bin/adddyndns
