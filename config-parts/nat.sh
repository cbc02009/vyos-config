#!/bin/vbash

#Plex NAT
set nat destination rule 99 description 'Plex'
set nat destination rule 99 destination port '32701'
set nat destination rule 99 inbound-interface ${INT_WAN}
set nat destination rule 99 protocol 'tcp_udp'
set nat destination rule 99 translation address ${LB_PLEX}
set nat destination rule 99 translation port '32400'

# Forward HTTP(S) to ingress
set nat destination rule 100 description 'HTTPS'
set nat destination rule 100 destination port '443'
set nat destination rule 100 inbound-interface ${INT_WAN}
set nat destination rule 100 protocol 'tcp'
set nat destination rule 100 translation address ${INGRESS_IP}
set nat destination rule 100 translation port '443'

set nat destination rule 101 description 'HTTP'
set nat destination rule 101 destination port '80'
set nat destination rule 101 inbound-interface ${INT_WAN}
set nat destination rule 101 protocol 'tcp'
set nat destination rule 101 translation address ${INGRESS_IP}
set nat destination rule 101 translation port '80'

# Force DNS
set nat destination rule 102 description 'Force DNS for IoT'
set nat destination rule 102 destination address '!10.5.0.4'
set nat destination rule 102 destination port '53'
set nat destination rule 102 inbound-interface ${INT_IOT}
set nat destination rule 102 protocol 'tcp_udp'
set nat destination rule 102 translation address '10.5.0.4'
set nat destination rule 102 translation port '53'

set nat destination rule 103 description 'Force DNS for LAN'
set nat destination rule 103 destination address '!10.5.0.4'
set nat destination rule 103 destination port '53'
set nat destination rule 103 inbound-interface ${INT_LAN}
set nat destination rule 103 protocol 'tcp_udp'
set nat destination rule 103 translation address '10.5.0.4'
set nat destination rule 103 translation port '53'

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface ${INT_WAN}
set nat source rule 100 translation address 'masquerade'
