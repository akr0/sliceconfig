# This file is a place-holder. When you run through the zabbix
# web setup, a proper configuration file should be generated
# for you to drop in this location.
# This file is a place-holder. When you run through the zabbix
# web setup, a proper configuration file should be generated
# for you to drop in this location.
<?php
/* 
** ZABBIX
** Copyright (C) 2000-2005 SIA Zabbix
**
** This program is free software; you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation; either version 2 of the License, or
** (at your option) any later version.
**
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with this program; if not, write to the Free Software
** Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
**/

global $DB_TYPE, $DB_SERVER, $DB_PORT, $DB_DATABASE, $DB_USER, $DB_PASSWORD, $IMAGE_FORMAT_DEFAULT;

$DB_TYPE	= "MYSQL";
$DB_SERVER	= "localhost";
$DB_PORT	= "0";
$DB_DATABASE	= "zabbix";
$DB_USER	= "zabbix";
$DB_PASSWORD	= "passwd";

$IMAGE_FORMAT_DEFAULT	= IMAGE_FORMAT_PNG;
?>