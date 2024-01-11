#!/bin/vbash

set service dhcp-server dynamic-dns-update
set service dhcp-server global-parameters "key ddnsupdate { algorithm hmac-md5; secret ${SECRET_DHCP_DDNS_UPDATE}; };"
set service dhcp-server global-parameters "zone ctec.run. { primary 10.5.0.3; key ddnsupdate; }"
set service dhcp-server global-parameters "ddns-domainname &quot;ctec.run.&quot;;"
set service dhcp-server global-parameters "ddns-rev-domainname &quot;in-addr.arpa.&quot;;"
set service dhcp-server global-parameters "zone in-addr.arpa. { primary 10.5.0.3; key ddnsupdate; }"
set service dhcp-server global-parameters "zone 0.10.in-addr.arpa. { primary 10.5.0.3; key ddnsupdate; }"

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
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 range 0 start '10.0.3.200'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 range 0 stop '10.0.3.254'

set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping hp823c1f ip-address '10.0.3.51'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping hp823c1f mac-address '48:BA:4E:82:3C:20'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Camera1 ip-address '10.0.3.10'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Camera1 mac-address '38:E7:C0:C3:7D:A2'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Smartswitch-Office ip-address '10.0.3.20'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Smartswitch-Office mac-address '54:af:97:09:1a:02'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Smartswitch-Server ip-address '10.0.3.21'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Smartswitch-Server mac-address '10:27:f5:a1:59:cd'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Dishwasher ip-address '10.0.3.30'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Dishwasher mac-address '40:ca:63:35:cb:dc'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Fridge ip-address '10.0.3.31'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Fridge mac-address '40:ca:63:1e:87:7c'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Range ip-address '10.0.3.32'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Range mac-address '88:57:1d:9a:c3:b1'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Thermostat-Living-Room ip-address '10.0.3.60'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Thermostat-Living-Room mac-address '44:61:32:63:ce:dc'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Thermostat-Upstairs ip-address '10.0.3.61'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Thermostat-Upstairs mac-address '44:61:32:9d:f4:31'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Thermostat-Main-Bedroom ip-address '10.0.3.62'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping Thermostat-Main-Bedroom mac-address '44:61:32:fc:3b:5d'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping PrusaMK4 ip-address '10.0.3.110'
set service dhcp-server shared-network-name IOT subnet 10.0.3.0/24 static-mapping PrusaMK4 mac-address '10:9c:70:2e:58:dd'

# LAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 default-router '10.0.0.1'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 range 0 start '10.0.0.200'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 range 0 stop '10.0.0.254'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 domain-name 'ctec.run'

set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping CRS317 ip-address '10.0.0.2'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping CRS317 mac-address '18:FD:74:12:79:55'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping CSS326 ip-address '10.0.0.3'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping CSS326 mac-address 'C4:AD:34:90:62:3F'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping workbench-switch ip-address '10.0.0.5'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping workbench-switch mac-address '18:fd:74:f5:b3:d0'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lr ip-address '10.0.0.40'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lr mac-address 'AC:8B:A9:24:AE:95'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lite-1 ip-address '10.0.0.41'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lite-1 mac-address '60:22:32:41:5B:74'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lite-2 ip-address '10.0.0.42'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping u6-lite-2 mac-address '60:22:32:40:D6:8C'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping USP-PDU-Pro ip-address '10.0.0.43'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping USP-PDU-Pro mac-address 'E4:38:83:1C:90:2D'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping pikvm-1 ip-address '10.0.0.50'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping pikvm-1 mac-address 'dc:a6:32:c8:36:33'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping pikvm-2 ip-address '10.0.0.51'
set service dhcp-server shared-network-name LAN subnet 10.0.0.0/24 static-mapping pikvm-2 mac-address 'e4:5f:01:41:3f:b6'

# Servers VLAN
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 default-router '10.0.2.1'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 domain-name ctec.run
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 range 0 start '10.0.2.200'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 range 0 stop '10.0.2.254'

set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Ram ip-address '10.0.2.14'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Ram mac-address '68:1D:EF:2D:E3:47'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Rem ip-address '10.0.2.13'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Rem mac-address '68:1D:EF:2D:79:3F'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Sakura ip-address '10.0.2.12'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Sakura mac-address 'E4:1D:2D:DD:7C:60'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Uiharu ip-address '10.0.2.10'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Uiharu mac-address 'E4:1D:2D:12:4B:60'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Miri ip-address '10.0.2.15'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Miri mac-address '58:47:ca:71:c1:b2'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Anya ip-address '10.0.2.11'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Anya mac-address 'FC:3F:DB:0E:7A:79'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Talos ip-address '10.0.2.93'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping Talos mac-address '00:16:3E:FB:30:AA'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping NUT-Server ip-address '10.0.2.3'
set service dhcp-server shared-network-name SERVERS subnet 10.0.2.0/24 static-mapping NUT-Server mac-address '46:35:1a:fc:aa:44'

# Trusted VLAN
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 default-router '10.0.1.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 domain-name ctec.run
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 range 0 start '10.0.1.200'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 range 0 stop '10.0.1.254'

set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Shinobu ip-address '10.0.1.5'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Shinobu mac-address 'B4:2E:99:3E:A5:4F'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Yuzu ip-address '10.0.1.50'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Yuzu mac-address 'F4:7B:09:9B:DD:9A'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping claire-iphone ip-address '10.0.1.81'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping claire-iphone mac-address '26:A7:03:FF:99:17'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Sulleta ip-address '10.0.1.64'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Sulleta mac-address '18:C0:4D:6A:18:E3'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Misaka ip-address '10.0.1.60'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Misaka mac-address '98:3b:8f:ce:2e:85'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Himari ip-address '10.0.1.120'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Himari mac-address 'e4:5f:01:41:46:82'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Poro ip-address '10.0.1.119'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.1.0/24 static-mapping Poro mac-address 'e4:5f:01:51:e3:ae'

# Video VLAN
set service dhcp-server shared-network-name VIDEO authoritative
set service dhcp-server shared-network-name VIDEO ping-check
set service dhcp-server shared-network-name VIDEO subnet 10.0.4.0/24 default-router '10.0.4.1'
set service dhcp-server shared-network-name VIDEO subnet 10.0.4.0/24 domain-name 'ctec.run'
set service dhcp-server shared-network-name VIDEO subnet 10.0.4.0/24 lease '86400'
set service dhcp-server shared-network-name VIDEO subnet 10.0.4.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name VIDEO subnet 10.0.4.0/24 range 0 start '10.0.4.200'
set service dhcp-server shared-network-name VIDEO subnet 10.0.4.0/24 range 0 stop '10.0.4.254'

set service dhcp-server shared-network-name VIDEO subnet 10.0.4.0/24 static-mapping camera-doorbell ip-address '10.0.4.10'
set service dhcp-server shared-network-name VIDEO subnet 10.0.4.0/24 static-mapping camera-doorbell mac-address '38:E7:C0:C3:7D:A2'
