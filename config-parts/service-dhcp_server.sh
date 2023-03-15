#!/bin/vbash

set service dhcp-server hostfile-update
set service dhcp-server host-decl-name

# # Guest VLAN
# set service dhcp-server shared-network-name GUEST authoritative
# set service dhcp-server shared-network-name GUEST ping-check
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 default-router '192.168.2.1'
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 lease '86400'
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 name-server '10.5.0.4'
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 start '192.168.2.200'
# set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 stop '192.168.2.254'

# # IoT VLAN
# set service dhcp-server shared-network-name IOT authoritative
# set service dhcp-server shared-network-name IOT ping-check
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 default-router '10.1.3.1'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 domain-name 'bjw-s.tech'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 lease '86400'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 name-server '10.5.0.4'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 start '10.1.3.200'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 stop '10.1.3.254'

# TODO
