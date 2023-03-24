# Gateway
set system static-host-mapping host-name gateway.ctec.run inet 10.0.0.1
set system static-host-mapping host-name gateway.ctec.run alias vpn.kokoro.wtf
set system static-host-mapping host-name gateway.ctec.run alias ipv4.kokoro.wtf

# Unifi controller
set system static-host-mapping host-name unifi.ctec.run inet 10.5.0.10
set system static-host-mapping host-name unifi.ctec.run alias unifi

# NAS
set system static-host-mapping host-name shana.ctec.run inet 10.0.0.4
set system static-host-mapping host-name shana.ctec.run alias nas.ctec.run
set system static-host-mapping host-name shana.ctec.run alias garage.kokoro.wtf
set system static-host-mapping host-name shana.ctec.run alias s3.kokoro.wtf

# Kubernetes hosts
set system static-host-mapping host-name uiharu.ctec.run inet 10.0.0.10
set system static-host-mapping host-name anya.ctec.run inet 10.0.0.11
set system static-host-mapping host-name sakura.ctec.run inet 10.0.0.12
set system static-host-mapping host-name rem.ctec.run inet 10.0.0.13
set system static-host-mapping host-name ram.ctec.run inet 10.0.0.14

# LXD Containers
set system static-host-mapping host-name minio.ctec.run inet 10.0.0.97
set system static-host-mapping host-name flexo.ctec.run inet 10.0.0.98

# Kubernetes cluster VIP
set system static-host-mapping host-name cluster.ctec.run inet 10.0.0.9

# Other hosts
