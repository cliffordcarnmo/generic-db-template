#!/bin/bash

source ../config/config
source uninstall.sh

mysql --host=$TARGETHOST --user=$ROOT --password=$ROOTPASSWORD --execute="CREATE SCHEMA ${TARGETSCHEMA} DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci"
mysql --host=$TARGETHOST --user=$ROOT --password=$ROOTPASSWORD --execute="CREATE USER '${USER}'@'%' IDENTIFIED BY '${USERPASSWORD}'"
mysql --host=$TARGETHOST --user=$ROOT --password=$ROOTPASSWORD --execute="CREATE USER '${USER}'@'localhost' IDENTIFIED BY '${USERPASSWORD}'"
mysql --host=$TARGETHOST --user=$ROOT --password=$ROOTPASSWORD --execute="GRANT ALL ON ${TARGETSCHEMA}.* TO '${USER}'@'%' WITH GRANT OPTION"
mysql --host=$TARGETHOST --user=$ROOT --password=$ROOTPASSWORD --execute="GRANT ALL ON ${TARGETSCHEMA}.* TO '${USER}'@'localhost' WITH GRANT OPTION"

for TABLE in ../tables/*.sql ; do
	mysql --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA < $TABLE
done

for INDEX in ../indexes/*.sql ; do
	mysql --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA < $INDEX
done

for FUNCTION in ../functions/*.sql ; do
	mysql --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA < $FUNCTION
done

for PROCEDURE in ../procedures/*.sql ; do
	mysql --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA < $PROCEDURE
done

PRODUCTS_ID=`mysql --silent --silent --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA --execute="SELECT createproduct('${PRODUCT}')"`
CONTRACTS_ID=`mysql --silent --silent --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA --execute="SELECT createcontract('${CONTRACT}',0,NULL)"`
CONTRACTDETAILS_ID=`mysql --silent --silent --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA --execute="SELECT assigncontractdetail('${CONTRACTS_ID}','${PRODUCTS_ID}',1)"`
ROLES_ID=`mysql --silent --silent --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA --execute="SELECT createrole('${ADMINISTRATIVEROLE}')"`
CONTACTDETAILS_ID=`mysql --silent --silent --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA --execute="SELECT createcontactdetail('${CUSTOMER}','${CONTACTPERSON}','${CONTACTPERSONEMAIL}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)"`
CONTACTDETAILS_ID_ADMINISTRATOR=`mysql --silent --silent --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA --execute="SELECT createcontactdetail(NULL,'${ADMINISTRATOR}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)"`
CUSTOMERS_ID=`mysql --silent --silent --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA --execute="SELECT createcustomer('${CONTACTDETAILS_ID}','${CONTRACTS_ID}')"`
CONTACTS_ID_CONTACT=`mysql --silent --silent --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA --execute="SELECT createcontact('${CUSTOMERS_ID}','${CONTACTDETAILS_ID_ADMINISTRATOR}','${ADMINISTRATOREMAIL}','${ADMINISTRATORPASSWORD}')"`
CONTACTS_ID_ADMINISTRATOR=`mysql --silent --silent --host=$TARGETHOST --user=$USER --password=$USERPASSWORD --database=$TARGETSCHEMA --execute="SELECT assigncontactrole('${CONTACTS_ID_CONTACT}','${ROLES_ID}')"`
