#!/bin/vbash

# ETH0
set interfaces ethernet eth0 address 'dhcp'
set interfaces ethernet eth0 description 'WAN'
# set interfaces ethernet eth0 hw-id ''

# ETH1 LAN
set interfaces ethernet eth1 address "${GATEWAY_LAN}/24"
set interfaces ethernet eth1 description 'LAN'
# set interfaces ethernet eth1 hw-id ''

# # ETH2 Servers
# set interfaces ethernet eth2 address '10.0.2.1/24'
# set interfaces ethernet eth2 description 'SERVERS'
# # set interfaces ethernet eth2 hw-id ''

# # ETH3 IOT/Guest
# set interfaces ethernet eth3 vif 30 address '192.168.2.1/24'
# set interfaces ethernet eth3 vif 30 description 'GUEST'
# # set interfaces ethernet eth3 hw-id ''
# set interfaces ethernet eth4 vif 40 address '10.0.3.1/24'
# set interfaces ethernet eth4 vif 40 description 'IOT'
# # set interfaces ethernet eth4 hw-id ''

# # set interfaces ethernet eth5 hw-id ''
