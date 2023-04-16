#!/bin/vbash

# ETH0
set interfaces ethernet eth0 address 'dhcp'
set interfaces ethernet eth0 description 'WAN'
set interfaces ethernet eth0 hw-id '7c:2b:e1:13:f7:71'

# ETH1 LAN
set interfaces ethernet eth1 hw-id '7c:2b:e1:13:f7:72'
set interfaces ethernet eth1 address '10.0.1.1/24'
set interfaces ethernet eth1 description 'TRUSTED'

# ETH2 Servers
set interfaces ethernet eth2 address '10.0.2.1/24'
set interfaces ethernet eth2 description 'SERVERS'
set interfaces ethernet eth2 hw-id '7c:2b:e1:13:f7:73'

# ETH3 IOT/Guest/LAN/Video
set interfaces ethernet eth3 address "10.0.0.1/24"
set interfaces ethernet eth3 description 'LAN'
set interfaces ethernet eth3 vif 30 address '192.168.2.1/24'
set interfaces ethernet eth3 vif 30 description 'GUEST'
set interfaces ethernet eth3 vif 40 address '10.0.3.1/24'
set interfaces ethernet eth3 vif 40 description 'IOT'
set interfaces ethernet eth3 vif 50 address '10.0.4.1/24'
set interfaces ethernet eth3 vif 50 description 'VIDEO'
set interfaces ethernet eth3 hw-id '7c:2b:e1:13:f7:74'

# WIREGUARD
set interfaces wireguard wg01 address '10.0.11.1/24'
set interfaces wireguard wg01 description 'WIREGUARD'
set interfaces wireguard wg01 port '51820'
set interfaces wireguard wg01 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
set interfaces wireguard wg01 peer yuzu allowed-ips '10.0.11.2/32'
set interfaces wireguard wg01 peer yuzu persistent-keepalive '15'
set interfaces wireguard wg01 peer yuzu public-key 'h9eTcLnzlhcfWgSClI29QgEsNYHSrh60ZkP6FmjTFy8='
set interfaces wireguard wg01 peer chronos allowed-ips '10.0.11.3/32'
set interfaces wireguard wg01 peer chronos persistent-keepalive '15'
set interfaces wireguard wg01 peer chronos public-key '608IT2YRPTCabLMGnpYfIWhgDnEpLV5IIpYi5J7m3As='