# Gateway
set system static-host-mapping host-name gateway.ctec.run inet 10.0.0.1
set system static-host-mapping host-name gateway.ctec.run alias vpn.kokoro.wtf
set system static-host-mapping host-name gateway.ctec.run alias ipv4.kokoro.wtf

# Unifi controller
set system static-host-mapping host-name unifi.ctec.run inet 10.5.0.10
set system static-host-mapping host-name unifi.ctec.run alias unifi

# NAS
set system static-host-mapping host-name shana.ctec.run inet 10.0.2.4
set system static-host-mapping host-name shana.ctec.run alias nas.ctec.run

# Kubernetes hosts
set system static-host-mapping host-name uiharu.ctec.run inet ${UIHARU_ADDR}
set system static-host-mapping host-name anya.ctec.run inet ${ANYA_ADDR}
set system static-host-mapping host-name sakura.ctec.run inet ${SAKURA_ADDR}
set system static-host-mapping host-name rem.ctec.run inet ${REM_ADDR}
set system static-host-mapping host-name ram.ctec.run inet ${RAM_ADDR}

# LXD Containers
set system static-host-mapping host-name minio.ctec.run inet 10.0.2.97
set system static-host-mapping host-name flexo.ctec.run inet 10.0.2.98
set system static-host-mapping host-name postgres.ctec.run inet 10.0.2.94
set system static-host-mapping host-name talos.ctec.run inet 10.0.2.93
set system static-host-mapping host-name builder.ctec.run inet 10.0.2.95
set system static-host-mapping host-name garage.ctec.run inet 10.0.2.99
set system static-host-mapping host-name garage.ctec.run alias garage.ctec.run
set system static-host-mapping host-name garage.ctec.run alias s3.ctec.run

# Kubernetes cluster VIP
set system static-host-mapping host-name cluster.ctec.run inet 10.5.0.2

# Other hosts
