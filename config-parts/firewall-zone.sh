#!/bin/vbash

set firewall zone guest default-action 'drop'
set firewall zone guest from iot firewall name 'iot-guest'
set firewall zone guest from lan firewall name 'lan-guest'
set firewall zone guest from local firewall name 'local-guest'
set firewall zone guest from servers firewall name 'servers-guest'
set firewall zone guest from services firewall name 'services-guest'
set firewall zone guest from trusted firewall name 'trusted-guest'
set firewall zone guest from wan firewall name 'wan-guest'
set firewall zone guest interface ${INT_GUEST}

set firewall zone iot default-action 'drop'
set firewall zone iot from guest firewall name 'guest-iot'
set firewall zone iot from lan firewall name 'lan-iot'
set firewall zone iot from local firewall name 'local-iot'
set firewall zone iot from servers firewall name 'servers-iot'
set firewall zone iot from services firewall name 'services-iot'
set firewall zone iot from trusted firewall name 'trusted-iot'
set firewall zone iot from wan firewall name 'wan-iot'
set firewall zone iot interface ${INT_IOT}

set firewall zone lan default-action 'drop'
set firewall zone lan from guest firewall name 'guest-lan'
set firewall zone lan from iot firewall name 'iot-lan'
set firewall zone lan from local firewall name 'local-lan'
set firewall zone lan from servers firewall name 'servers-lan'
set firewall zone lan from services firewall name 'services-lan'
set firewall zone lan from trusted firewall name 'trusted-lan'
set firewall zone lan from wan firewall name 'wan-lan'
set firewall zone lan interface ${INT_LAN}

set firewall zone local default-action 'drop'
set firewall zone local description 'Local router zone'
set firewall zone local from guest firewall name 'guest-local'
set firewall zone local from iot firewall name 'iot-local'
set firewall zone local from lan firewall name 'lan-local'
set firewall zone local from servers firewall name 'servers-local'
set firewall zone local from services firewall name 'services-local'
set firewall zone local from trusted firewall name 'trusted-local'
set firewall zone local from wan firewall name 'wan-local'
set firewall zone local local-zone

set firewall zone servers default-action 'drop'
set firewall zone servers from guest firewall name 'guest-servers'
set firewall zone servers from iot firewall name 'iot-servers'
set firewall zone servers from lan firewall name 'lan-servers'
set firewall zone servers from local firewall name 'local-servers'
set firewall zone servers from services firewall name 'services-servers'
set firewall zone servers from trusted firewall name 'trusted-servers'
set firewall zone servers from wan firewall name 'wan-servers'
set firewall zone servers interface ${INT_SERVERS}

set firewall zone services default-action 'drop'
set firewall zone services description 'VyOS services zone'
set firewall zone services from guest firewall name 'guest-services'
set firewall zone services from iot firewall name 'iot-services'
set firewall zone services from lan firewall name 'lan-services'
set firewall zone services from local firewall name 'local-services'
set firewall zone services from servers firewall name 'servers-services'
set firewall zone services from trusted firewall name 'trusted-services'
set firewall zone services from wan firewall name 'wan-services'
set firewall zone services interface 'cni-services'

set firewall zone trusted default-action 'drop'
set firewall zone trusted from guest firewall name 'guest-trusted'
set firewall zone trusted from iot firewall name 'iot-trusted'
set firewall zone trusted from lan firewall name 'lan-trusted'
set firewall zone trusted from local firewall name 'local-trusted'
set firewall zone trusted from servers firewall name 'servers-trusted'
set firewall zone trusted from services firewall name 'services-trusted'
set firewall zone trusted from wan firewall name 'wan-trusted'
set firewall zone trusted interface ${INT_TRUST}
# set firewall zone trusted interface 'wg01'

set firewall zone wan from guest firewall name 'guest-wan'
set firewall zone wan from iot firewall name 'iot-wan'
set firewall zone wan from lan firewall name 'lan-wan'
set firewall zone wan from local firewall name 'local-wan'
set firewall zone wan from servers firewall name 'servers-wan'
set firewall zone wan from services firewall name 'services-wan'
set firewall zone wan from trusted firewall name 'trusted-wan'
set firewall zone wan interface ${INT_WAN}
