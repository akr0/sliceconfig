# Copyright (c) 2008-2009, the Flatsoft, LLC.
# All rights reserved


# include config
. `dirname $0`/configuration.sh


# copy config, monit config must be a regular file
copy_file $sliceconfig/config/etc/zabbix/db.inc.php /etc/zabbix/db.inc.php
copy_file $sliceconfig/config/etc/zabbix/zabbix.conf.php /etc/zabbix/zabbix.conf.php
copy_file $sliceconfig/config/etc/zabbix/zabbix.agent.conf /etc/zabbix/zabbix.agent.conf
copy_file $sliceconfig/config/etc/zabbix/zabbix.agentd.conf /etc/zabbix/zabbix.agentd.conf
copy_file $sliceconfig/config/etc/zabbix/zabbix.server.conf /etc/zabbix/zabbix.server.conf

# configure service
service mysqld start
chkconfig mysqld on

# create database
mysql -uroot -e "create database zabbix;"
mysql -uroot -e "create user 'zabbix'@'localhost' identified by 'passwd';"
mysql -uroot -e "grant all privileges on zabbix.* to 'zabbix'@'localhost' identified by 'passwd';"
mysql -uzabbix -ppasswd zabbix < /usr/share/doc/zabbix-1.4.6/dbinit/schema/mysql.sql
mysql -uzabbix -ppasswd zabbix < /usr/share/doc/zabbix-1.4.6/dbinit/data/data.sql
mysql -uzabbix -ppasswd zabbix < /usr/share/doc/zabbix-1.4.6/dbinit/data/images_mysql.sql

# adding services
cat >> /etc/services << EOF
zabbix_agent 10050/tcp
zabbix_trap 10051/tcp
EOF

# configure & start services
chkconfig zabbix on
chkconfig zabbix-agent on
chkconfig httpd on
service zabbix start
service zabbix-agent start
service httpd start
