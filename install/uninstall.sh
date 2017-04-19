#!/bin/bash

source ../config/config

mysql --silent --silent --host=$TARGETHOST --user=$ROOT --password=$ROOTPASSWORD --execute="DROP SCHEMA ${TARGETSCHEMA}" 2>/dev/null
mysql --silent --silent --host=$TARGETHOST --user=$ROOT --password=$ROOTPASSWORD --execute="DROP USER '${USER}'@'%'" 2>/dev/null
mysql --silent --silent --host=$TARGETHOST --user=$ROOT --password=$ROOTPASSWORD --execute="DROP USER '${USER}'@'localhost'" 2>/dev/null
