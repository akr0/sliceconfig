# Copyright (c) 2008-2009, the Flatsoft, LLC.
# All rights reserved


# include config
. `dirname $0`/configuration.sh

yum -y -d1 install zabbix.x86_64 zabbix-agent.x86_64 zabbix-web.x86_64