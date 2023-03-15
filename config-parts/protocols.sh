#!/bin/vbash

# BGP configuration
set protocols bgp neighbor 10.0.2.10 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.10 description 'uiharu'
set protocols bgp neighbor 10.0.2.10 remote-as '64512'
set protocols bgp neighbor 10.0.2.11 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.11 description 'anya'
set protocols bgp neighbor 10.0.2.11 remote-as '64512'
set protocols bgp neighbor 10.0.2.12 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.12 description 'sakura'
set protocols bgp neighbor 10.0.2.12 remote-as '64512'
set protocols bgp neighbor 10.0.2.13 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.13 description 'rem'
set protocols bgp neighbor 10.0.2.13 remote-as '64512'
set protocols bgp neighbor 10.0.2.14 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.14 description 'ram'
set protocols bgp neighbor 10.0.2.14 remote-as '64512'
set protocols bgp parameters router-id '10.0.0.1'
set protocols bgp system-as '64512'
