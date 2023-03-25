#!/bin/vbash

set service dhcp-server hostfile-update
set service dhcp-server host-decl-name

# Guest VLAN
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 default-router '192.168.2.1'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 start '192.168.2.100'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 stop '192.168.2.254'

# IoT VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 default-router '10.0.3.1'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 domain-name 'ctec.run'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 range 0 start '10.0.3.100'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 range 0 stop '10.0.3.254'

# LAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 default-router ${GATEWAY_LAN}
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 range 0 start '10.0.0.200'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 range 0 stop '10.0.0.254'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 domain-name 'ctec.run'

set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping CRS317 ip-address '10.0.0.2'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping CRS317 mac-address '18:FD:74:12:79:55'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping CSS326 ip-address '10.0.0.3'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping CSS326 mac-address 'C4:AD:34:90:62:3F'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Shinobu ip-address '10.0.0.5'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Shinobu mac-address 'B4:2E:99:3E:A5:4F'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Yuzu ip-address '10.0.0.50'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Yuzu mac-address 'F4:7B:09:9B:DD:9A'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping claire-iphone ip-address '10.0.0.81'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping claire-iphone mac-address '26:A7:03:FF:99:17'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Kiki ip-address '10.0.0.94'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Kiki mac-address '00:16:3E:20:8A:A1'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Postgres ip-address '10.0.0.96'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Postgres mac-address '00:16:3E:73:31:72'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Camera1 ip-address '10.0.0.110'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Camera1 mac-address '38:E7:C0:C3:7D:A2'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Sulleta ip-address '10.0.0.64'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Sulleta mac-address '18:C0:4D:6A:18:E3'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Minio ip-address '10.0.0.97'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Minio mac-address '00:16:3E:E3:07:08'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Talos ip-address '10.0.0.93'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Talos mac-address '00:16:3E:FB:30:AA'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping hp823c1f ip-address '10.0.0.51'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping hp823c1f mac-address '48:BA:4E:82:3C:20'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Garage ip-address '10.0.0.99'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Garage mac-address '00:16:3E:59:EC:97'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Builder ip-address '10.0.0.95'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Builder mac-address '00:16:3E:90:AA:59'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lr ip-address '10.0.0.40'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lr mac-address 'AC:8B:A9:24:AE:95'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lite-1 ip-address '10.0.0.41'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lite-1 mac-address '60:22:32:41:5B:74'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lite-2 ip-address '10.0.0.42'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lite-2 mac-address '60:22:32:40:D6:8C'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping USP-PDU-Pro ip-address '10.0.0.43'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping USP-PDU-Pro mac-address 'E4:38:83:1C:90:2D'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Misaka ip-address '10.0.0.60'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping Misaka mac-address '98:3b:8f:ce:2e:85'

# Servers VLAN
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 default-router '10.0.2.1'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 domain-name ctec.run
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 range 0 start '10.0.2.200'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 range 0 stop '10.0.2.254'

# Trusted VLAN
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 default-router '10.0.1.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 domain-name ctec.run
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 range 0 start '10.0.1.200'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 range 0 stop '10.0.1.254'