#!/bin/vbash

# From LAN to LOCAL
set firewall name lan-local default-action 'drop'
set firewall name lan-local description 'From LAN to LOCAL'
set firewall name lan-local enable-default-log
set firewall name lan-local rule 1 action 'accept'
set firewall name lan-local rule 1 description 'Rule: accept_ssh'
set firewall name lan-local rule 1 destination port 'ssh'
set firewall name lan-local rule 1 protocol 'tcp'
set firewall name lan-local rule 2 action 'accept'
set firewall name lan-local rule 2 description 'Rule: accept_ntp'
set firewall name lan-local rule 2 destination port 'ntp'
set firewall name lan-local rule 2 protocol 'udp'
set firewall name lan-local rule 3 action 'accept'
set firewall name lan-local rule 3 description 'Rule: accept_dhcp'
set firewall name lan-local rule 3 destination port '67,68'
set firewall name lan-local rule 3 protocol 'udp'
set firewall name lan-local rule 3 source port '67,68'
set firewall name lan-local rule 4 action 'accept'
set firewall name lan-local rule 4 description 'Rule: accept_bgp'
set firewall name lan-local rule 4 destination port 'bgp'
set firewall name lan-local rule 4 protocol 'tcp'
set firewall name lan-local rule 5 action 'accept'
set firewall name lan-local rule 5 description 'Rule: accept_tftp'
set firewall name lan-local rule 5 destination port '69'
set firewall name lan-local rule 5 protocol 'udp'
set firewall name lan-local rule 6 action 'accept'
set firewall name lan-local rule 6 description 'Rule: accept_prometheus_from_k8s_nodes'
set firewall name lan-local rule 6 destination port '9153'
set firewall name lan-local rule 6 protocol 'tcp'
set firewall name lan-local rule 6 source group address-group 'k8s_nodes'
set firewall name lan-local rule 7 description 'Rule: accept_vyos_api'
set firewall name lan-local rule 7 destination port '8443'
set firewall name lan-local rule 7 protocol 'tcp'


# From LAN to SERVICES
set firewall name lan-services default-action 'accept'
set firewall name lan-services description 'From LAN to SERVICES'
set firewall name lan-services rule 1 action 'accept'
set firewall name lan-services rule 1 description 'Rule: accept_dns'
set firewall name lan-services rule 1 destination port 'domain,domain-s'
set firewall name lan-services rule 1 protocol 'tcp_udp'
set firewall name lan-services rule 2 description 'Rule: accept_k8s_api'
set firewall name lan-services rule 2 destination port '6443'
set firewall name lan-services rule 2 protocol 'tcp'
set firewall name lan-services rule 2 action 'accept'

# From LAN to WAN
set firewall name lan-wan default-action 'accept'
set firewall name lan-wan description 'From LAN to WAN'

# From LOCAL to LAN
set firewall name local-lan default-action 'drop'
set firewall name local-lan description 'From LOCAL to LAN'
set firewall name local-lan enable-default-log
set firewall name local-lan rule 1 action 'accept'
set firewall name local-lan rule 1 description 'Rule: accept_igmp'
set firewall name local-lan rule 1 protocol '2'
set firewall name local-lan rule 2 action 'accept'

# From LOCAL to WAN
set firewall name local-wan default-action 'accept'
set firewall name local-wan description 'From LOCAL to WAN'

# From SERVICES to LAN
set firewall name services-lan default-action 'drop'
set firewall name services-lan description 'From SERVICES to LAN'
set firewall name services-lan enable-default-log

# From SERVICES to LOCAL
set firewall name services-local default-action 'drop'
set firewall name services-local description 'From SERVICES to LOCAL'
set firewall name services-local enable-default-log
set firewall name services-local rule 1 action 'accept'
set firewall name services-local rule 1 description 'Rule: accept_ntp'
set firewall name services-local rule 1 destination port 'ntp'
set firewall name services-local rule 1 protocol 'udp'
set firewall name services-local rule 2 action 'accept'
set firewall name services-local rule 2 description 'Rule: accept_dhcp'
set firewall name services-local rule 2 destination port '67,68'
set firewall name services-local rule 2 protocol 'udp'
set firewall name services-local rule 2 source port '67,68'

# From SERVICES to WAN
set firewall name services-wan default-action 'accept'
set firewall name services-wan description 'From SERVICES to WAN'

# From WAN to LAN
set firewall name wan-lan default-action 'drop'
set firewall name wan-lan description 'From WAN to LAN'
set firewall name wan-lan enable-default-log
set firewall name wan-lan rule 1 action 'accept'
set firewall name wan-lan rule 1 description 'Rule: accept_ingress_from_cloudflare'
set firewall name wan-lan rule 1 destination group address-group 'k8s_ingress'
set firewall name wan-lan rule 1 destination port 'http,https'
set firewall name wan-lan rule 1 protocol 'tcp'
set firewall name wan-lan rule 1 source group network-group 'cloudflare-ipv4'

# From WAN to LOCAL
set firewall name wan-local default-action 'drop'
set firewall name wan-local description 'From WAN to LOCAL'
set firewall name wan-local enable-default-log
set firewall name wan-local rule 1 action 'accept'
set firewall name wan-local rule 1 description 'Rule: accept_wireguard'
set firewall name wan-local rule 1 destination port '51820'
set firewall name wan-local rule 1 protocol 'udp'
set firewall name lan-local rule 2 action 'accept'
set firewall name lan-local rule 2 description 'Rule: accept_ssh'
set firewall name lan-local rule 2 destination port 'ssh'
set firewall name lan-local rule 2 protocol 'tcp'

# From WAN to SERVICES
set firewall name wan-services default-action 'drop'
set firewall name wan-services description 'From WAN to SERVICES'
set firewall name wan-services enable-default-log
