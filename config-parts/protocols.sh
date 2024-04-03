#!/bin/vbash

# BGP configuration
set protocols bgp neighbor 10.0.2.4 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.4 description 'shana'
set protocols bgp neighbor 10.0.2.4 remote-as '64512'
set protocols bgp neighbor 10.0.2.5 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.5 description 'ivy'
set protocols bgp neighbor 10.0.2.5 remote-as '64512'
set protocols bgp neighbor 10.0.2.10 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.10 description 'uiharu'
set protocols bgp neighbor 10.0.2.10 remote-as '64512'
set protocols bgp neighbor 10.0.2.11 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.11 description 'anya'
set protocols bgp neighbor 10.0.2.11 remote-as '64512'
set protocols bgp neighbor 10.0.2.12 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.12 description 'sakura'
set protocols bgp neighbor 10.0.2.12 remote-as '64512'
set protocols bgp neighbor 10.0.2.15 address-family ipv4-unicast
set protocols bgp neighbor 10.0.2.15 description 'miri'
set protocols bgp neighbor 10.0.2.15 remote-as '64512'
set protocols bgp parameters router-id '10.0.0.1'
set protocols bgp system-as '64512'
