#!/bin/vbash

# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'

# Address Groups
set firewall group address-group k8s_api address '10.5.0.2'
set firewall group address-group k8s_ingress address ${INGRESS_IP}

set firewall group address-group k8s_nodes address ${UIHARU_ADDR}
set firewall group address-group k8s_nodes address ${ANYA_ADDR}
set firewall group address-group k8s_nodes address ${SAKURA_ADDR}
set firewall group address-group k8s_nodes address ${REM_ADDR}
set firewall group address-group k8s_nodes address ${RAM_ADDR}

set firewall group address-group k8s_plex address ${LB_PLEX}

set firewall group address-group k8s_vector_aggregator address ${LB_VECTOR}

set firewall group address-group nas address ${SHANA_ADDR}

set firewall group address-group unifi_devices address '10.0.0.40'
set firewall group address-group unifi_devices address '10.0.0.41'
set firewall group address-group unifi_devices address '10.0.0.42'
set firewall group address-group unifi_devices address '10.0.0.43'

set firewall group address-group vyos_chronyd address '10.5.0.5'

set firewall group address-group vyos_coredns address '10.5.0.3'

set firewall group address-group vyos_dnsdist address '10.5.0.4'

set firewall group address-group vyos_unifi address '10.5.0.10'

# Network groups
set firewall group network-group cloudflare-ipv4 network '173.245.48.0/20'
set firewall group network-group cloudflare-ipv4 network '103.21.244.0/22'
set firewall group network-group cloudflare-ipv4 network '103.22.200.0/22'
set firewall group network-group cloudflare-ipv4 network '103.31.4.0/22'
set firewall group network-group cloudflare-ipv4 network '141.101.64.0/18'
set firewall group network-group cloudflare-ipv4 network '108.162.192.0/18'
set firewall group network-group cloudflare-ipv4 network '190.93.240.0/20'
set firewall group network-group cloudflare-ipv4 network '188.114.96.0/20'
set firewall group network-group cloudflare-ipv4 network '197.234.240.0/22'
set firewall group network-group cloudflare-ipv4 network '198.41.128.0/17'
set firewall group network-group cloudflare-ipv4 network '162.158.0.0/15'
set firewall group network-group cloudflare-ipv4 network '104.16.0.0/13'
set firewall group network-group cloudflare-ipv4 network '104.24.0.0/14'
set firewall group network-group cloudflare-ipv4 network '172.64.0.0/13'
set firewall group network-group cloudflare-ipv4 network '131.0.72.0/22'

# Port groups
set firewall group port-group wireguard port '51820'
