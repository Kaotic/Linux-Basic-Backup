#!/bin/bash

#Hour-Minute_Day_Month_Year
format_date='%H-%M_%d_%m_%Y'

#Hour-Minute_Day_Month_Year
date=`date +${format_date}`;

#Create dir if not created.
mkdir -p /var/mysql_backup;

#Dump MySQL databases.
mysqldump -u root -p"YourPASSWORD" --all-databases > /var/mysql_backup/${date}_backup.sql;

#ZIP all your files and MySQL databases. (Change 33d91 for add security.)
zip -r /var/www/backups/33d91/${date}_server1.zip /var/mysql_backup/${date}_backup.sql /etc/apache2 /etc/bind /etc/postfix /var/exemple1 /var/exemple2 /var/exemple3 /var/exemple4 /var/exemple5 /var/www;
