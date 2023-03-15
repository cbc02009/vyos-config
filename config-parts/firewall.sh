#!/bin/vbash

# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'

# Address Groups
set firewall group address-group k8s_api address '10.5.0.2'

set firewall group address-group k8s_ingress address '10.45.0.1'

set firewall group address-group k8s_nodes address '10.0.2.10'
set firewall group address-group k8s_nodes address '10.0.2.11'
set firewall group address-group k8s_nodes address '10.0.2.12'
set firewall group address-group k8s_nodes address '10.0.2.13'
set firewall group address-group k8s_nodes address '10.0.2.14'

set firewall group address-group k8s_plex address '10.45.0.12'

set firewall group address-group k8s_vector_aggregator address '10.45.0.19'
