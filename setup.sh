#!/bin/bash

#adds a user so that we dont have it runing as root
adduser -r dyndns

#makes a folser for the ip variable
mkdir /opt/dyndns

cp updater.php /opt/dyndns/updater.php

chmod +x updater.php

#makes for folder owned by our dyndns user
chown /opt/dyndns -R dundns:dyndns

#makes a file for the cron jobs
touch /etc/cron.d/dyndns

cp adddyndns /usr/local/bin/adddyndns

chmod +x /usr/local/b+in/adddyndns
