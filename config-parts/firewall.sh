#!/bin/vbash

# General configuration
set firewall global-options state-policy established action 'accept'
set firewall global-options state-policy related action 'accept'
set firewall global-options all-ping enable
set firewall global-options broadcast-ping disable

# Router (VyOS itself)
set firewall group address-group router-addresses address 10.0.0.1
set firewall group address-group router-addresses address 127.0.0.1

# Address Groups
set firewall group address-group k8s_api address '10.5.0.2'
set firewall group address-group k8s_ingress address '10.6.0.1'
set firewall group address-group k8s_ingress address '10.6.0.2'

# k8s nodes
set firewall group address-group k8s_nodes address '10.0.2.10-10.0.2.15'

# k8s cluster services
set firewall group address-group k8s_api address '10.5.0.2'
set firewall group address-group k8s_ingress address '10.6.0.1'
set firewall group address-group k8s_ingress address '10.6.0.2'
set firewall group address-group k8s_plex address ${LB_PLEX}
set firewall group address-group k8s_vector_aggregator address ${LB_VECTOR}

# Printers
set firewall group address-group printers address '10.0.3.51'

# Scanners
set firewall group address-group scanners address '10.0.3.51'

# Unifi devices
set firewall group address-group unifi_devices address '10.0.0.40-10.0.0.43' # APs

# Storage devices
set firewall group address-group nas address ${SHANA_ADDR}

# Vyos containers addresses
set firewall group address-group vyos_coredns address '10.5.0.3'
set firewall group address-group vyos_dnsdist address '10.5.0.4'
set firewall group address-group vyos_unifi address '10.5.0.10'

# Port groups
set firewall group port-group wireguard port '51820'
