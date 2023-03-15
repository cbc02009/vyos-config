#!/bin/vbash

# Forward HTTP(S) to ingress
set nat destination rule 100 description 'HTTPS'
set nat destination rule 100 destination port '443'
set nat destination rule 100 inbound-interface 'eth0'
set nat destination rule 100 protocol 'tcp'
set nat destination rule 100 translation address '${INGRESS_IP}'
set nat destination rule 100 translation port '443'

set nat destination rule 101 description 'HTTP'
set nat destination rule 101 destination port '80'
set nat destination rule 101 inbound-interface 'eth0'
set nat destination rule 101 protocol 'tcp'
set nat destination rule 101 translation address '${INGRESS_IP}'
set nat destination rule 101 translation port '80'
