#!/bin/vbash

set service dhcp-server hostfile-update
set service dhcp-server host-decl-name

# LAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 default-router ${GATEWAY_LAN}
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 name-server '10.5.0.4'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 range 0 start '10.0.0.200'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 range 0 stop '10.0.0.254'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 domain-name 'ctec.run'

set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 CRS317 ip-address '10.0.0.2'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 CRS317 mac-address '18:FD:74:12:79:55'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 CSS326 ip-address '10.0.0.3'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 CSS326 mac-address 'C4:AD:34:90:62:3F'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Shinobu ip-address '10.0.0.5'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Shinobu mac-address 'B4:2E:99:3E:A5:4F'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Yuzu ip-address '10.0.0.50'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Yuzu mac-address 'F4:7B:09:9B:DD:9A'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 claire-iphone ip-address '10.0.0.81'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 claire-iphone mac-address '26:A7:03:FF:99:17'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Kiki ip-address '10.0.0.94'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Kiki mac-address '00:16:3E:20:8A:A1'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Postgres ip-address '10.0.0.96'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Postgres mac-address '00:16:3E:73:31:72'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Camera1 ip-address '10.0.0.110'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Camera1 mac-address '38:E7:C0:C3:7D:A2'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Sulleta ip-address '10.0.0.70'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Sulleta mac-address '18:C0:4D:6A:18:E3'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Minio ip-address '10.0.0.97'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Minio mac-address '00:16:3E:E3:07:08'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Talos ip-address '10.0.0.93'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Talos mac-address '00:16:3E:FB:30:AA'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 hp823c1f ip-address '10.0.0.51'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 hp823c1f mac-address '48:BA:4E:82:3C:20'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Garage ip-address '10.0.0.99'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Garage mac-address '00:16:3E:59:EC:97'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Builder ip-address '10.0.0.95'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Builder mac-address '00:16:3E:90:AA:59'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 u6-lr ip-address '10.0.0.40'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 u6-lr mac-address 'AC:8B:A9:24:AE:95'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 u6-lite-1 ip-address '10.0.0.41'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 u6-lite-1 mac-address '60:22:32:41:5B:74'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 u6-lite-2 ip-address '10.0.0.42'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 u6-lite-2 mac-address '60:22:32:40:D6:8C'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 USP-PDU-Pro ip-address '10.0.0.43'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 USP-PDU-Pro mac-address 'E4:38:83:1C:90:2D'


# Maybe these shouldn't be here since they're static?
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Shana ip-address '10.0.0.4'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Shana mac-address 'EA:56:68:61:06:4C'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Ram ip-address '10.0.0.14'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Ram mac-address '68:1D:EF:2D:E3:47'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Rem ip-address '10.0.0.13'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Rem mac-address '68:1D:EF:2D:79:3F'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Sakura ip-address '10.0.0.12'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Sakura mac-address 'E4:1D:2D:DD:7C:60'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Uiharu ip-address '10.0.0.10'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Uiharu mac-address 'E4:1D:2D:12:4B:60'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Anya ip-address '10.0.0.11'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/23 Anya mac-address 'FC:3F:DB:0E:7A:79'
