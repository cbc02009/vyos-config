#!/bin/vbash

# From CONTAINERS to GUEST
set firewall ipv4 name containers-guest default-action 'drop'
set firewall ipv4 name containers-guest description 'From CONTAINERS to GUEST'
# set firewall ipv4 name containers-guest enable-default-log

# From CONTAINERS to IOT
set firewall ipv4 name containers-iot default-action 'drop'
set firewall ipv4 name containers-iot description 'From CONTAINERS to IOT'
# set firewall ipv4 name containers-iot enable-default-log

# From CONTAINERS to LAN
set firewall ipv4 name containers-lan default-action 'drop'
set firewall ipv4 name containers-lan description 'From CONTAINERS to LAN'
# set firewall ipv4 name containers-lan enable-default-log

# From CONTAINERS to LOCAL
set firewall ipv4 name containers-local default-action 'drop'
set firewall ipv4 name containers-local description 'From CONTAINERS to LOCAL'
# set firewall ipv4 name containers-local enable-default-log
set firewall ipv4 name containers-local rule 1 action 'accept'
set firewall ipv4 name containers-local rule 1 description 'Rule: accept_ntp'
set firewall ipv4 name containers-local rule 1 destination port 'ntp'
set firewall ipv4 name containers-local rule 1 protocol 'udp'
set firewall ipv4 name containers-local rule 2 action 'accept'
set firewall ipv4 name containers-local rule 2 description 'Rule: accept_dhcp'
set firewall ipv4 name containers-local rule 2 destination port '67,68'
set firewall ipv4 name containers-local rule 2 protocol 'udp'
set firewall ipv4 name containers-local rule 2 source port '67,68'

# From CONTAINERS to SERVERS
set firewall ipv4 name containers-servers default-action 'accept'
set firewall ipv4 name containers-servers description 'From CONTAINERS to SERVERS'
set firewall ipv4 name containers-servers rule 1 action 'accept'
set firewall ipv4 name containers-servers rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name containers-servers rule 1 protocol 'icmp'

# From CONTAINERS to TRUSTED
set firewall ipv4 name containers-trusted default-action 'drop'
set firewall ipv4 name containers-trusted description 'From CONTAINERS to TRUSTED'
# set firewall ipv4 name containers-trusted enable-default-log

# From CONTAINERS to VIDEO
set firewall ipv4 name containers-video default-action 'drop'
set firewall ipv4 name containers-video description 'From CONTAINERS to VIDEO'
# set firewall ipv4 name containers-video enable-default-log

# From CONTAINERS to WAN
set firewall ipv4 name containers-wan default-action 'accept'
set firewall ipv4 name containers-wan description 'From CONTAINERS to WAN'

# From GUEST to IOT
set firewall ipv4 name guest-iot default-action 'drop'
set firewall ipv4 name guest-iot description 'From GUEST to IOT'
set firewall ipv4 name guest-iot enable-default-log

# From GUEST to LAN
set firewall ipv4 name guest-lan default-action 'drop'
set firewall ipv4 name guest-lan description 'From GUEST to LAN'
set firewall ipv4 name guest-lan enable-default-log

# From GUEST to LOCAL
set firewall ipv4 name guest-local default-action 'drop'
set firewall ipv4 name guest-local description 'From GUEST to LOCAL'
set firewall ipv4 name guest-local enable-default-log
set firewall ipv4 name guest-local rule 1 action 'accept'
set firewall ipv4 name guest-local rule 1 description 'Rule: accept_dhcp'
set firewall ipv4 name guest-local rule 1 destination port '67,68'
set firewall ipv4 name guest-local rule 1 protocol 'udp'
set firewall ipv4 name guest-local rule 1 source port '67,68'

# From GUEST to SERVERS
set firewall ipv4 name guest-servers default-action 'drop'
set firewall ipv4 name guest-servers description 'From GUEST to SERVERS'
set firewall ipv4 name guest-servers enable-default-log
set firewall ipv4 name guest-servers rule 1 action 'accept'
set firewall ipv4 name guest-servers rule 1 description 'Rule: accept_plex_from_plex_clients'
set firewall ipv4 name guest-servers rule 1 destination group address-group 'k8s_plex'
set firewall ipv4 name guest-servers rule 1 destination port '32400'
set firewall ipv4 name guest-servers rule 1 protocol 'tcp'

# From GUEST to CONTAINERS
set firewall ipv4 name guest-containers default-action 'drop'
set firewall ipv4 name guest-containers description 'From GUEST to CONTAINERS'
set firewall ipv4 name guest-containers enable-default-log
set firewall ipv4 name guest-containers rule 1 action 'accept'
set firewall ipv4 name guest-containers rule 1 description 'Rule: accept_dns'
set firewall ipv4 name guest-containers rule 1 destination port 'domain,domain-s'
set firewall ipv4 name guest-containers rule 1 protocol 'tcp_udp'

# From GUEST to TRUSTED
set firewall ipv4 name guest-trusted default-action 'drop'
set firewall ipv4 name guest-trusted description 'From GUEST to TRUSTED'
set firewall ipv4 name guest-trusted enable-default-log

# From GUEST to VIDEO
set firewall ipv4 name guest-video default-action 'drop'
set firewall ipv4 name guest-video description 'From GUEST to VIDEO'
set firewall ipv4 name guest-video enable-default-log

# From GUEST to WAN
set firewall ipv4 name guest-wan default-action 'accept'
set firewall ipv4 name guest-wan description 'From GUEST to WAN'

# From IOT to GUEST
set firewall ipv4 name iot-guest default-action 'drop'
set firewall ipv4 name iot-guest description 'From IOT to GUEST'
set firewall ipv4 name iot-guest enable-default-log

# From IOT to LAN
set firewall ipv4 name iot-lan default-action 'drop'
set firewall ipv4 name iot-lan description 'From IOT to LAN'
set firewall ipv4 name iot-lan enable-default-log

# From IOT to LOCAL
set firewall ipv4 name iot-local default-action 'drop'
set firewall ipv4 name iot-local description 'From IOT to LOCAL'
set firewall ipv4 name iot-local enable-default-log
set firewall ipv4 name iot-local rule 1 action 'accept'
set firewall ipv4 name iot-local rule 1 description 'Rule: accept_ntp'
set firewall ipv4 name iot-local rule 1 destination port 'ntp'
set firewall ipv4 name iot-local rule 1 protocol 'udp'
set firewall ipv4 name iot-local rule 2 action 'accept'
set firewall ipv4 name iot-local rule 2 description 'Rule: accept_dhcp'
set firewall ipv4 name iot-local rule 2 destination port '67,68'
set firewall ipv4 name iot-local rule 2 protocol 'udp'
set firewall ipv4 name iot-local rule 2 source port '67,68'
set firewall ipv4 name iot-local rule 3 action 'accept'
set firewall ipv4 name iot-local rule 3 description 'Rule: accept_igmp'
set firewall ipv4 name iot-local rule 3 protocol '2'

# From IOT to SERVERS
set firewall ipv4 name iot-servers default-action 'drop'
set firewall ipv4 name iot-servers description 'From IOT to SERVERS'
set firewall ipv4 name iot-servers enable-default-log

# From IOT to CONTAINERS
set firewall ipv4 name iot-containers default-action 'accept'
set firewall ipv4 name iot-containers description 'From IOT to CONTAINERS'
set firewall ipv4 name iot-containers rule 1 action 'accept'
set firewall ipv4 name iot-containers rule 1 description 'Rule: accept_dns'
set firewall ipv4 name iot-containers rule 1 destination port 'domain,domain-s'
set firewall ipv4 name iot-containers rule 1 protocol 'tcp_udp'

# From IOT to TRUSTED
set firewall ipv4 name iot-trusted default-action 'drop'
set firewall ipv4 name iot-trusted description 'From IOT to TRUSTED'
set firewall ipv4 name iot-trusted enable-default-log

# From IOT to VIDEO
set firewall ipv4 name iot-video default-action 'drop'
set firewall ipv4 name iot-video description 'From IOT to VIDEO'
set firewall ipv4 name iot-video enable-default-log

# From IOT to WAN
set firewall ipv4 name iot-wan default-action 'accept'
set firewall ipv4 name iot-wan description 'From IOT to WAN'

# From LAN to GUEST
set firewall ipv4 name lan-guest default-action 'drop'
set firewall ipv4 name lan-guest description 'From LAN to GUEST'
set firewall ipv4 name lan-guest enable-default-log

# From LAN to IOT
set firewall ipv4 name lan-iot default-action 'drop'
set firewall ipv4 name lan-iot description 'From LAN to IOT'
set firewall ipv4 name lan-iot enable-default-log

# From LAN to LOCAL
set firewall ipv4 name lan-local default-action 'drop'
set firewall ipv4 name lan-local description 'From LAN to LOCAL'
set firewall ipv4 name lan-local enable-default-log
set firewall ipv4 name lan-local rule 1 action 'accept'
set firewall ipv4 name lan-local rule 1 description 'Rule: accept_ssh'
set firewall ipv4 name lan-local rule 1 destination port 'ssh'
set firewall ipv4 name lan-local rule 1 protocol 'tcp'
set firewall ipv4 name lan-local rule 2 action 'accept'
set firewall ipv4 name lan-local rule 2 description 'Rule: accept_ntp'
set firewall ipv4 name lan-local rule 2 destination port 'ntp'
set firewall ipv4 name lan-local rule 2 protocol 'udp'
set firewall ipv4 name lan-local rule 3 action 'accept'
set firewall ipv4 name lan-local rule 3 description 'Rule: accept_dhcp'
set firewall ipv4 name lan-local rule 3 destination port '67,68'
set firewall ipv4 name lan-local rule 3 protocol 'udp'
set firewall ipv4 name lan-local rule 3 source port '67,68'

# From LAN to SERVERS
set firewall ipv4 name lan-servers default-action 'drop'
set firewall ipv4 name lan-servers description 'From LAN to SERVERS'
set firewall ipv4 name lan-servers enable-default-log
set firewall ipv4 name lan-servers rule 1 action 'accept'
set firewall ipv4 name lan-servers rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name lan-servers rule 1 protocol 'icmp'
set firewall ipv4 name lan-servers rule 100 protocol 'udp'
set firewall ipv4 name lan-servers rule 100 action 'accept'
set firewall ipv4 name lan-servers rule 100 description 'allow unifi device discovery'
set firewall ipv4 name lan-servers rule 100 destination port '10001'

# From LAN to CONTAINERS
set firewall ipv4 name lan-containers default-action 'accept'
set firewall ipv4 name lan-containers description 'From LAN to CONTAINERS'
set firewall ipv4 name lan-containers rule 1 action 'accept'
set firewall ipv4 name lan-containers rule 1 description 'Rule: accept_dns'
set firewall ipv4 name lan-containers rule 1 destination port 'domain,domain-s'
set firewall ipv4 name lan-containers rule 1 protocol 'tcp_udp'

# From LAN to TRUSTED
set firewall ipv4 name lan-trusted default-action 'drop'
set firewall ipv4 name lan-trusted description 'From LAN to TRUSTED'
set firewall ipv4 name lan-trusted enable-default-log

# From LAN to VIDEO
set firewall ipv4 name lan-video default-action 'drop'
set firewall ipv4 name lan-video description 'From LAN to VIDEO'
set firewall ipv4 name lan-video enable-default-log

# From LAN to WAN
set firewall ipv4 name lan-wan default-action 'accept'
set firewall ipv4 name lan-wan description 'From LAN to WAN'

# From LOCAL to GUEST
set firewall ipv4 name local-guest default-action 'drop'
set firewall ipv4 name local-guest description 'From LOCAL to GUEST'
set firewall ipv4 name local-guest enable-default-log

# From LOCAL to IOT
set firewall ipv4 name local-iot default-action 'drop'
set firewall ipv4 name local-iot description 'From LOCAL to IOT'
set firewall ipv4 name local-iot enable-default-log
set firewall ipv4 name local-iot rule 1 action 'accept'
set firewall ipv4 name local-iot rule 1 description 'Rule: accept_igmp'
set firewall ipv4 name local-iot rule 1 protocol '2'

# From LOCAL to LAN
set firewall ipv4 name local-lan default-action 'drop'
set firewall ipv4 name local-lan description 'From LOCAL to LAN'
set firewall ipv4 name local-lan enable-default-log

# From LOCAL to SERVERS
set firewall ipv4 name local-servers default-action 'drop'
set firewall ipv4 name local-servers description 'From LOCAL to SERVERS'
set firewall ipv4 name local-servers enable-default-log
set firewall ipv4 name local-servers rule 1 action 'accept'
set firewall ipv4 name local-servers rule 1 description 'Rule: accept_bgp'
set firewall ipv4 name local-servers rule 1 destination port 'bgp'
set firewall ipv4 name local-servers rule 1 protocol 'tcp'
set firewall ipv4 name local-servers rule 2 action 'accept'
set firewall ipv4 name local-servers rule 2 description 'Rule: accept_k8s_api'
set firewall ipv4 name local-servers rule 2 destination port '6443'
set firewall ipv4 name local-servers rule 2 protocol 'tcp'
set firewall ipv4 name local-servers rule 3 action 'accept'
set firewall ipv4 name local-servers rule 3 description 'Rule: accept_dns'
set firewall ipv4 name local-servers rule 3 destination port 'domain,domain-s'
set firewall ipv4 name local-servers rule 3 protocol 'tcp_udp'
set firewall ipv4 name local-servers rule 4 action 'accept'
set firewall ipv4 name local-servers rule 4 description 'Rule: accept_vector_syslog'
set firewall ipv4 name local-servers rule 4 destination group address-group 'k8s_vector_aggregator'
set firewall ipv4 name local-servers rule 4 destination port '6001'
set firewall ipv4 name local-servers rule 4 protocol 'tcp'

# From LOCAL to CONTAINERS
set firewall ipv4 name local-containers default-action 'accept'
set firewall ipv4 name local-containers description 'From LOCAL to CONTAINERS'
set firewall ipv4 name local-containers rule 1 action 'accept'
set firewall ipv4 name local-containers rule 1 description 'Rule: accept_dns'
set firewall ipv4 name local-containers rule 1 destination port 'domain,domain-s'
set firewall ipv4 name local-containers rule 1 protocol 'tcp_udp'

# From LOCAL to TRUSTED
set firewall ipv4 name local-trusted default-action 'drop'
set firewall ipv4 name local-trusted description 'From LOCAL to TRUSTED'
set firewall ipv4 name local-trusted enable-default-log
set firewall ipv4 name local-trusted rule 1 action 'accept'
set firewall ipv4 name local-trusted rule 1 description 'Rule: accept_igmp'
set firewall ipv4 name local-trusted rule 1 protocol '2'
set firewall ipv4 name local-trusted rule 2 action 'accept'
set firewall ipv4 name local-trusted rule 2 description 'Rule: accept_iperf_3'
set firewall ipv4 name local-trusted rule 2 destination port '5201'
set firewall ipv4 name local-trusted rule 2 protocol 'tcp_udp'

# From LOCAL to VIDEO
set firewall ipv4 name local-video default-action 'drop'
set firewall ipv4 name local-video description 'From LOCAL to VIDEO'
set firewall ipv4 name local-video enable-default-log

# From LOCAL to WAN
set firewall ipv4 name local-wan default-action 'accept'
set firewall ipv4 name local-wan description 'From LOCAL to WAN'

# From SERVERS to GUEST
set firewall ipv4 name servers-guest default-action 'drop'
set firewall ipv4 name servers-guest description 'From SERVERS to GUEST'
set firewall ipv4 name servers-guest enable-default-log

# From SERVERS to IOT
set firewall ipv4 name servers-iot default-action 'drop'
set firewall ipv4 name servers-iot description 'From SERVERS to IOT'
set firewall ipv4 name servers-iot enable-default-log
set firewall ipv4 name servers-iot rule 1 action 'accept'
set firewall ipv4 name servers-iot rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name servers-iot rule 1 protocol 'icmp'
# set firewall ipv4 name servers-iot rule 4 action 'accept'
# set firewall ipv4 name servers-iot rule 4 description 'Rule: accept_3d_printer_control_from_k8s_nodes'
# set firewall ipv4 name servers-iot rule 4 destination group address-group '3d_printer_controllers'
# set firewall ipv4 name servers-iot rule 4 destination port '7125'
# set firewall ipv4 name servers-iot rule 4 protocol 'tcp'
# set firewall ipv4 name servers-iot rule 4 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-iot rule 2 action 'accept'
set firewall ipv4 name servers-iot rule 2 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-iot rule 2 protocol 'tcp'
set firewall ipv4 name servers-iot rule 2 source group address-group 'k8s_nodes'

# From SERVERS to LAN
set firewall ipv4 name servers-lan default-action 'accept'
set firewall ipv4 name servers-lan description 'From SERVERS to LAN'
set firewall ipv4 name servers-lan rule 1 action 'accept'
set firewall ipv4 name servers-lan rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name servers-lan rule 1 protocol 'icmp'

# From SERVERS to LOCAL
set firewall ipv4 name servers-local default-action 'drop'
set firewall ipv4 name servers-local description 'From SERVERS to LOCAL'
set firewall ipv4 name servers-local enable-default-log
set firewall ipv4 name servers-local rule 1 action 'accept'
set firewall ipv4 name servers-local rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name servers-local rule 1 protocol 'icmp'
set firewall ipv4 name servers-local rule 2 action 'accept'
set firewall ipv4 name servers-local rule 2 description 'Rule: accept_ntp'
set firewall ipv4 name servers-local rule 2 destination port 'ntp'
set firewall ipv4 name servers-local rule 2 protocol 'udp'
set firewall ipv4 name servers-local rule 3 action 'accept'
set firewall ipv4 name servers-local rule 3 description 'Rule: accept_dhcp'
set firewall ipv4 name servers-local rule 3 destination port '67,68'
set firewall ipv4 name servers-local rule 3 protocol 'udp'
set firewall ipv4 name servers-local rule 3 source port '67,68'
set firewall ipv4 name servers-local rule 4 action 'accept'
set firewall ipv4 name servers-local rule 4 description 'Rule: accept_bgp'
set firewall ipv4 name servers-local rule 4 destination port 'bgp'
set firewall ipv4 name servers-local rule 4 protocol 'tcp'
set firewall ipv4 name servers-local rule 5 action 'accept'
set firewall ipv4 name servers-local rule 5 description 'Rule: accept_tftp'
set firewall ipv4 name servers-local rule 5 destination port '69'
set firewall ipv4 name servers-local rule 5 protocol 'udp'
set firewall ipv4 name servers-local rule 6 action 'accept'
set firewall ipv4 name servers-local rule 6 description 'Rule: accept_node_exporter_from_k8s_nodes'
set firewall ipv4 name servers-local rule 6 destination port '9100'
set firewall ipv4 name servers-local rule 6 protocol 'tcp'
set firewall ipv4 name servers-local rule 6 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-local rule 7 action 'accept'
set firewall ipv4 name servers-local rule 7 description 'Rule: accept_speedtest_exporter_from_k8s_nodes'
set firewall ipv4 name servers-local rule 7 destination port '9798'
set firewall ipv4 name servers-local rule 7 protocol 'tcp'
set firewall ipv4 name servers-local rule 7 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-local rule 8 action 'accept'
set firewall ipv4 name servers-local rule 8 description 'Rule: accept_iperf_3'
set firewall ipv4 name servers-local rule 8 destination port '5201'
set firewall ipv4 name servers-local rule 8 protocol 'tcp_udp'

# From SERVERS to CONTAINERS
set firewall ipv4 name servers-containers default-action 'accept'
set firewall ipv4 name servers-containers description 'From SERVERS to CONTAINERS'
# set firewall ipv4 name servers-containers enable-default-log
set firewall ipv4 name servers-containers rule 1 action 'accept'
set firewall ipv4 name servers-containers rule 1 description 'Rule: accept_dns'
set firewall ipv4 name servers-containers rule 1 destination port 'domain,domain-s'
set firewall ipv4 name servers-containers rule 1 protocol 'tcp_udp'
set firewall ipv4 name servers-containers rule 2 action 'accept'
set firewall ipv4 name servers-containers rule 2 description 'Rule: accept_k8s_api'
set firewall ipv4 name servers-containers rule 2 destination port '6443'
set firewall ipv4 name servers-containers rule 2 protocol 'tcp'
set firewall ipv4 name servers-containers rule 3 action 'accept'
set firewall ipv4 name servers-containers rule 3 description 'Rule: accept_flexo'
set firewall ipv4 name servers-containers rule 3 destination port '7878'
set firewall ipv4 name servers-containers rule 3 protocol 'tcp'

# From SERVERS to TRUSTED
set firewall ipv4 name servers-trusted default-action 'drop'
set firewall ipv4 name servers-trusted description 'From SERVERS to TRUSTED'
set firewall ipv4 name servers-trusted rule 1 action 'accept'
set firewall ipv4 name servers-trusted rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name servers-trusted rule 1 protocol 'icmp'
set firewall ipv4 name servers-trusted rule 2 action 'accept'
set firewall ipv4 name servers-trusted rule 2 description 'Rule: accept_iperf_3'
set firewall ipv4 name servers-trusted rule 2 destination port '5201'
set firewall ipv4 name servers-trusted rule 2 protocol 'tcp_udp'

# From SERVERS to VIDEO
set firewall ipv4 name servers-video default-action 'drop'
set firewall ipv4 name servers-video description 'From SERVERS to VIDEO'
# set firewall ipv4 name servers-video enable-default-log
set firewall ipv4 name servers-video rule 1 action 'accept'
set firewall ipv4 name servers-video rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name servers-video rule 1 protocol 'icmp'
set firewall ipv4 name servers-video rule 2 action 'accept'
set firewall ipv4 name servers-video rule 2 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-video rule 2 protocol 'tcp'
set firewall ipv4 name servers-video rule 2 source group address-group 'k8s_nodes'

# From SERVERS to WAN
set firewall ipv4 name servers-wan default-action 'accept'
set firewall ipv4 name servers-wan description 'From SERVERS to WAN'

# From TRUSTED to GUEST
set firewall ipv4 name trusted-guest default-action 'drop'
set firewall ipv4 name trusted-guest description 'From TRUSTED to GUEST'
# set firewall ipv4 name trusted-guest enable-default-log

# From TRUSTED to IOT
set firewall ipv4 name trusted-iot default-action 'accept'
set firewall ipv4 name trusted-iot description 'From TRUSTED to IOT'
set firewall ipv4 name trusted-iot rule 1 action 'accept'
set firewall ipv4 name trusted-iot rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name trusted-iot rule 1 protocol 'icmp'

# From TRUSTED to LAN
set firewall ipv4 name trusted-lan default-action 'accept'
set firewall ipv4 name trusted-lan description 'From TRUSTED to LAN'
set firewall ipv4 name trusted-lan rule 1 action 'accept'
set firewall ipv4 name trusted-lan rule 1 description 'Rule: accept_ssh'
set firewall ipv4 name trusted-lan rule 1 destination port 'ssh'
set firewall ipv4 name trusted-lan rule 1 protocol 'tcp'

# From TRUSTED to LOCAL
set firewall ipv4 name trusted-local default-action 'drop'
set firewall ipv4 name trusted-local description 'From TRUSTED to LOCAL'
# set firewall ipv4 name trusted-local enable-default-log
set firewall ipv4 name trusted-local rule 1 action 'accept'
set firewall ipv4 name trusted-local rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name trusted-local rule 1 protocol 'icmp'
set firewall ipv4 name trusted-local rule 2 action 'accept'
set firewall ipv4 name trusted-local rule 2 description 'Rule: accept_ssh'
set firewall ipv4 name trusted-local rule 2 destination port 'ssh'
set firewall ipv4 name trusted-local rule 2 protocol 'tcp'
set firewall ipv4 name trusted-local rule 3 action 'accept'
set firewall ipv4 name trusted-local rule 3 description 'Rule: accept_ntp'
set firewall ipv4 name trusted-local rule 3 destination port 'ntp'
set firewall ipv4 name trusted-local rule 3 protocol 'udp'
set firewall ipv4 name trusted-local rule 4 action 'accept'
set firewall ipv4 name trusted-local rule 4 description 'Rule: accept_dhcp'
set firewall ipv4 name trusted-local rule 4 destination port '67,68'
set firewall ipv4 name trusted-local rule 4 protocol 'udp'
set firewall ipv4 name trusted-local rule 4 source port '67,68'
set firewall ipv4 name trusted-local rule 5 action 'accept'
set firewall ipv4 name trusted-local rule 5 description 'Rule: accept_igmp'
set firewall ipv4 name trusted-local rule 5 protocol '2'
set firewall ipv4 name trusted-local rule 7 action 'accept'
set firewall ipv4 name trusted-local rule 7 description 'Rule: accept_vyos_api'
set firewall ipv4 name trusted-local rule 7 destination port '8443'
set firewall ipv4 name trusted-local rule 7 protocol 'tcp'
set firewall ipv4 name trusted-local rule 8 action 'accept'
set firewall ipv4 name trusted-local rule 8 description 'Rule: accept_iperf_3'
set firewall ipv4 name trusted-local rule 8 destination port '5201'
set firewall ipv4 name trusted-local rule 8 protocol 'tcp_udp'
set firewall ipv4 name trusted-local rule 9 action 'accept'
set firewall ipv4 name trusted-local rule 9 description 'Rule: accept_wireguard'
set firewall ipv4 name trusted-local rule 9 destination port '51820'
set firewall ipv4 name trusted-local rule 9 protocol 'udp'

# From TRUSTED to SERVERS
set firewall ipv4 name trusted-servers default-action 'accept'
set firewall ipv4 name trusted-servers description 'From TRUSTED to SERVERS'
set firewall ipv4 name trusted-servers rule 1 action 'accept'
set firewall ipv4 name trusted-servers rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name trusted-servers rule 1 protocol 'icmp'

# From TRUSTED to CONTAINERS
set firewall ipv4 name trusted-containers default-action 'accept'
set firewall ipv4 name trusted-containers description 'From TRUSTED to CONTAINERS'
set firewall ipv4 name trusted-containers rule 1 action 'accept'
set firewall ipv4 name trusted-containers rule 1 description 'Rule: accept_dns'
set firewall ipv4 name trusted-containers rule 1 destination port 'domain,domain-s'
set firewall ipv4 name trusted-containers rule 1 protocol 'tcp_udp'

# From TRUSTED to VIDEO
set firewall ipv4 name trusted-video default-action 'accept'
set firewall ipv4 name trusted-video description 'From TRUSTED to VIDEO'
set firewall ipv4 name trusted-video rule 1 action 'accept'
set firewall ipv4 name trusted-video rule 1 description 'Rule: accept_icmp'
set firewall ipv4 name trusted-video rule 1 protocol 'icmp'

# From TRUSTED to WAN
set firewall ipv4 name trusted-wan default-action 'accept'
set firewall ipv4 name trusted-wan description 'From TRUSTED to WAN'

# From VIDEO to GUEST
set firewall ipv4 name video-guest default-action 'drop'
set firewall ipv4 name video-guest description 'From VIDEO to GUEST'
# set firewall ipv4 name video-guest enable-default-log

# From VIDEO to IOT
set firewall ipv4 name video-iot default-action 'drop'
set firewall ipv4 name video-iot description 'From VIDEO to IOT'
# set firewall ipv4 name video-iot enable-default-log

# From VIDEO to LAN
set firewall ipv4 name video-lan default-action 'drop'
set firewall ipv4 name video-lan description 'From VIDEO to LAN'
# set firewall ipv4 name video-lan enable-default-log

# From VIDEO to LOCAL
set firewall ipv4 name video-local default-action 'drop'
set firewall ipv4 name video-local description 'From VIDEO to LOCAL'
# set firewall ipv4 name video-local enable-default-log
set firewall ipv4 name video-local rule 1 action 'accept'
set firewall ipv4 name video-local rule 1 description 'Rule: accept_ntp'
set firewall ipv4 name video-local rule 1 destination port 'ntp'
set firewall ipv4 name video-local rule 1 protocol 'udp'
set firewall ipv4 name video-local rule 2 action 'accept'
set firewall ipv4 name video-local rule 2 description 'Rule: accept_dhcp'
set firewall ipv4 name video-local rule 2 destination port '67,68'
set firewall ipv4 name video-local rule 2 protocol 'udp'
set firewall ipv4 name video-local rule 2 source port '67,68'

# From VIDEO to SERVERS
set firewall ipv4 name video-servers default-action 'drop'
set firewall ipv4 name video-servers description 'From VIDEO to SERVERS'
# set firewall ipv4 name video-servers enable-default-log

# From VIDEO to CONTAINERS
set firewall ipv4 name video-containers default-action 'accept'
set firewall ipv4 name video-containers description 'From VIDEO to CONTAINERS'
set firewall ipv4 name video-containers rule 1 action 'accept'
set firewall ipv4 name video-containers rule 1 description 'Rule: accept_dns'
set firewall ipv4 name video-containers rule 1 destination port 'domain,domain-s'
set firewall ipv4 name video-containers rule 1 protocol 'tcp_udp'

# From VIDEO to TRUSTED
set firewall ipv4 name video-trusted default-action 'drop'
set firewall ipv4 name video-trusted description 'From VIDEO to TRUSTED'
# set firewall ipv4 name video-trusted enable-default-log

# From VIDEO to WAN
set firewall ipv4 name video-wan default-action 'drop'
set firewall ipv4 name video-wan description 'From VIDEO to WAN'

# From WAN to GUEST
set firewall ipv4 name wan-guest default-action 'drop'
set firewall ipv4 name wan-guest description 'From WAN to GUEST'
# set firewall ipv4 name wan-guest enable-default-log

# From WAN to IOT
set firewall ipv4 name wan-iot default-action 'drop'
set firewall ipv4 name wan-iot description 'From WAN to IOT'
# set firewall ipv4 name wan-iot enable-default-log

# From WAN to LAN
set firewall ipv4 name wan-lan default-action 'drop'
set firewall ipv4 name wan-lan description 'From WAN to LAN'
# set firewall ipv4 name wan-lan enable-default-log

# From WAN to LOCAL
set firewall ipv4 name wan-local default-action 'drop'
set firewall ipv4 name wan-local description 'From WAN to LOCAL'
set firewall ipv4 name wan-local enable-default-log
set firewall ipv4 name wan-local rule 1 action 'drop'
set firewall ipv4 name wan-local rule 1 description 'Rule: drop_invalid'
set firewall ipv4 name wan-local rule 1 state invalid
set firewall ipv4 name wan-local rule 1 log
set firewall ipv4 name wan-local rule 100 action 'accept'
set firewall ipv4 name wan-local rule 100 description 'Rule: accept_wireguard'
set firewall ipv4 name wan-local rule 100 destination port '51820'
set firewall ipv4 name wan-local rule 100 protocol 'udp'

# From WAN to SERVERS
set firewall ipv4 name wan-servers default-action 'drop'
set firewall ipv4 name wan-servers description 'From WAN to SERVERS'
set firewall ipv4 name wan-servers enable-default-log
set firewall ipv4 name wan-servers rule 999 action 'drop'
set firewall ipv4 name wan-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-servers rule 999 state invalid
set firewall ipv4 name wan-servers rule 999 log

# From WAN to CONTAINERS
set firewall ipv4 name wan-containers default-action 'drop'
set firewall ipv4 name wan-containers description 'From WAN to CONTAINERS'
set firewall ipv4 name wan-containers enable-default-log
set firewall ipv4 name wan-containers rule 999 action 'drop'
set firewall ipv4 name wan-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-containers rule 999 state invalid
set firewall ipv4 name wan-containers rule 999 log

# From WAN to TRUSTED
set firewall ipv4 name wan-trusted default-action 'drop'
set firewall ipv4 name wan-trusted description 'From WAN to TRUSTED'
set firewall ipv4 name wan-trusted enable-default-log
set firewall ipv4 name wan-trusted rule 999 action 'drop'
set firewall ipv4 name wan-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-trusted rule 999 state invalid
set firewall ipv4 name wan-trusted rule 999 log

# From WAN to VIDEO
set firewall ipv4 name wan-video default-action 'drop'
set firewall ipv4 name wan-video description 'From WAN to VIDEO'
set firewall ipv4 name wan-video enable-default-log
set firewall ipv4 name wan-video rule 999 action 'drop'
set firewall ipv4 name wan-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-video rule 999 state invalid
set firewall ipv4 name wan-video rule 999 log