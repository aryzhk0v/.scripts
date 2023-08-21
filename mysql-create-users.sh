#!/bin/bash
## USAGE:
## Create file with following format:
## user1,pass1
## user2,pass2
##
## then run it on the server
MYSQL_USER=""
MYSQL_PASS=""
while IFS= read -r line;
do
    MYSQL_USER=$(echo $line | cut -d ',' -f 1)
    MYSQL_PASS=$(echo $line | cut -d ',' -f 2)
    echo "User: ${MYSQL_USER}, Pass: ${MYSQL_PASS}"
    echo 'mysql -e 'show databases;'
done < mysql-users.csv
