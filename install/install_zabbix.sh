# Copyright (c) 2008-2009, the Flatsoft, LLC.
# All rights reserved

# sliceconfig dir
sliceconfig=`dirname $0`/..
sliceconfig=`readlink -f $sliceconfig`


# install required software
sh $sliceconfig/install/scripts/install_net-snmp.sh
sh $sliceconfig/install/scripts/install_zabbix.sh


# software configuration
sh $sliceconfig/install/scripts/setup_zabbix.sh


# setup perm on several dirs
sh $sliceconfig/security/scripts/setup_perms_zabbix.sh

# erase history
sh $sliceconfig/security/scripts/erase_history.sh
