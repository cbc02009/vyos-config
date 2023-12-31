
#!/bin/bash

load /opt/vyatta/etc/config.boot.default

set interfaces ethernet eth0 description 'LAN'
set interfaces ethernet eth0 address '10.0.0.1/24'
set interfaces ethernet eth0 hw-id '1c:fd:08:74:1b:0a'

set interfaces ethernet eth0 description 'WAN'
set interfaces ethernet eth0 address 'dhcp'
set interfaces ethernet eth0 hw-id '9c:7b:ef:b7:95:f3'

set system login user vyos authentication public-keys Shinobu key 'AAAAC3NzaC1lZDI1NTE5AAAAILJMeEa+xfvD5/pyA6wim4IZywbdcI7SboTzEaysVGN6'
set system login user vyos authentication public-keys Shinobu type 'ssh-ed25519'
set system login user vyos authentication public-keys Yuzu key 'AAAAC3NzaC1lZDI1NTE5AAAAIDsav6iUbSXpAyLG7JSN9UGcSf42uopBpDlUtRV/eXng'
set system login user vyos authentication public-keys Yuzu type 'ssh-ed25519'
set system login user vyos authentication public-keys Sulleta key 'AAAAC3NzaC1lZDI1NTE5AAAAIGTj3MMx5xpemNeye6j3iJjnQq7L0I4RRSicLI1AFUXh'
set system login user vyos authentication public-keys Sulleta type 'ssh-ed25519'

set service ssh disable-password-authentication
set service ssh port '22'

delete system host-name
set system host-name 'gateway'
set system domain-name 'ctec.run'

set system ipv6 disable-forwarding

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system time-zone 'America/New_York'

set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 default-router '10.0.0.1'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 name-server '1.1.1.1'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 range 0 start '10.0.0.200'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 range 0 stop '10.0.0.254'

# ALL -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 outbound-interface 'eth0'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 translation address 'masquerade'