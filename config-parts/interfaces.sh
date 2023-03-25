#!/bin/vbash

# ETH0
set interfaces ethernet eth0 address 'dhcp'
set interfaces ethernet eth0 description 'WAN'
set interfaces ethernet eth0 hw-id '7c:2b:e1:13:f7:71'

# ETH1 LAN
# TODO MOVE LAN TO ETH3
set interfaces ethernet eth1 address "10.0.0.1/24"
set interfaces ethernet eth1 description 'LAN'
set interfaces ethernet eth1 hw-id '7c:2b:e1:13:f7:72'
set interfaces ethernet eth1 vif 10 address '10.0.1.1/24'
set interfaces ethernet eth1 vif 10 description 'TRUSTED'

# ETH2 Servers
set interfaces ethernet eth2 address '10.0.2.1/24'
set interfaces ethernet eth2 description 'SERVERS'
set interfaces ethernet eth2 hw-id '7c:2b:e1:13:f7:73'

# ETH3 IOT/Guest
set interfaces ethernet eth3 vif 30 address '192.168.2.1/24'
set interfaces ethernet eth3 vif 30 description 'GUEST'
set interfaces ethernet eth3 vif 40 address '10.0.3.1/24'
set interfaces ethernet eth3 vif 40 description 'IOT'
set interfaces ethernet eth3 hw-id '7c:2b:e1:13:f7:74'

