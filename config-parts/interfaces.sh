#!/bin/vbash

# ETH0 WAN
set interfaces ethernet eth0 hw-id '9c:7b:ef:b7:95:f3'
set interfaces ethernet eth0 description 'WAN'
set interfaces ethernet eth0 address 'dhcp'
set interface ethernet eth0 offload gro
set interface ethernet eth0 offload gso
set interface ethernet eth0 offload sg
set interface ethernet eth0 offload tso

# ETH1
set interfaces ethernet eth1 hw-id '1c:fd:08:74:1b:0b'
set interface ethernet eth1 offload gro
set interface ethernet eth1 offload gso
set interface ethernet eth1 offload sg
set interface ethernet eth1 offload tso


# ETH2 DNS
set interfaces ethernet eth2 hw-id '1c:fd:08:74:1b:0a'
set interfaces ethernet eth2 address '10.0.5.1/24'
set interface ethernet eth2 offload gro
set interface ethernet eth2 offload gso
set interface ethernet eth2 offload sg
set interface ethernet eth2 offload tso


# ETH3 BOND
set interfaces ethernet eth3 hw-id 'e4:1d:2d:22:a9:40'
set interface ethernet eth3 offload gro
set interface ethernet eth3 offload gso
set interface ethernet eth3 offload sg
set interface ethernet eth3 offload tso

# ETH4 BOND
set interfaces ethernet eth4 hw-id 'e4:1d:2d:22:a9:41'
set interface ethernet eth4 offload gro
set interface ethernet eth4 offload gso
set interface ethernet eth4 offload sg
set interface ethernet eth4 offload tso

# BOND0 LAN
set interfaces bonding bond0
set interfaces bonding bond0 hash-policy 'layer3+4'
set interfaces bonding bond0 mode '802.3ad'
set interfaces bonding bond0 member interface eth3
set interfaces bonding bond0 member interface eth4
set interfaces bonding bond0 address '10.0.0.1/24'
set interfaces bonding bond0 description 'LAN'

# BOND0.10 TRUSTED
set interfaces bonding bond0 vif 10 address '10.0.1.1/24'
set interfaces bonding bond0 vif 10 description 'TRUSTED'

# BOND0.20 SERVERS
set interfaces bonding bond0 vif 20 address '10.0.2.1/24'
set interfaces bonding bond0 vif 20 description 'SERVERS'

# BOND0.30 GUEST
set interfaces bonding bond0 vif 30 address '192.168.2.1/24'
set interfaces bonding bond0 vif 30 description 'GUEST'

# BOND0.40 IOT
set interfaces bonding bond0 vif 40 address '10.0.3.1/24'
set interfaces bonding bond0 vif 40 description 'IOT'

# BOND0.30 VIDEO
set interfaces bonding bond0 vif 50 address '10.0.4.1/24'
set interfaces bonding bond0 vif 50 description 'VIDEO'

# WIREGUARD
set interfaces wireguard wg01 address '10.0.11.1/24'
set interfaces wireguard wg01 description 'WIREGUARD'
set interfaces wireguard wg01 port '51820'
set interfaces wireguard wg01 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
set interfaces wireguard wg01 peer yuzu allowed-ips '10.0.11.2/32'
set interfaces wireguard wg01 peer yuzu persistent-keepalive '15'
set interfaces wireguard wg01 peer yuzu public-key 'MwgAdGZ7/scsL7NbP+6IOpzty0cMc3aDrm4YeHHexHo='
set interfaces wireguard wg01 peer chronos allowed-ips '10.0.11.3/32'
set interfaces wireguard wg01 peer chronos persistent-keepalive '15'
set interfaces wireguard wg01 peer chronos public-key 'ky1gLcVE/eCBtoPbi3ZZHOgbqqoJ2xcJ4XjlXtQNmA4='

