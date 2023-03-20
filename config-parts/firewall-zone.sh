#!/bin/vbash

set firewall zone lan default-action 'drop'
set firewall zone lan from local firewall name 'local-lan'
set firewall zone lan from services firewall name 'services-lan'
set firewall zone lan from wan firewall name 'wan-lan'
set firewall zone lan interface 'eth1'

set firewall zone local default-action 'drop'
set firewall zone local description 'Local router zone'
set firewall zone local from lan firewall name 'lan-local'
set firewall zone local from services firewall name 'services-local'
set firewall zone local from wan firewall name 'wan-local'
set firewall zone local local-zone

set firewall zone services default-action 'drop'
set firewall zone services description 'VyOS services zone'
set firewall zone services from lan firewall name 'lan-services'
set firewall zone services from local firewall name 'local-services'
set firewall zone services from wan firewall name 'wan-services'
set firewall zone services interface 'cni-services'

set firewall zone wan default-action 'drop'
set firewall zone wan from lan firewall name 'lan-wan'
set firewall zone wan from local firewall name 'local-wan'
set firewall zone wan from services firewall name 'services-wan'
set firewall zone wan interface 'eth0'
