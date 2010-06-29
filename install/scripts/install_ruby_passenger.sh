# Copyright (c) 2008-2009, the Flatsoft, LLC.
# All rights reserved


# include config
. `dirname $0`/configuration.sh

echo gem install --ignore-dependencies --no-rdoc --no-ri --no-update-sources -q passenger --version=`get_value 'CONFIG_PASSENGER_VERSION'`
passenger-install-apache2-module
ln -s /opt/ruby-enterprise-1.8.7-2009.10/ /opt/ree
