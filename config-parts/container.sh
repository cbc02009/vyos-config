#!/bin/vbash

# Container networks
set container network services prefix '10.5.0.0/24'

# cloudflare-ddns
set container name cloudflare-ddns allow-host-networks
set container name cloudflare-ddns environment CF_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set container name cloudflare-ddns environment DOMAINS value 'ipv4.kokoro.wtf'
set container name cloudflare-ddns environment IP6_PROVIDER value "none"
set container name cloudflare-ddns environment TZ value ${TZ}
set container name cloudflare-ddns environment PGID value "1000"
set container name cloudflare-ddns environment PUID value "1000"
set container name cloudflare-ddns image 'docker.io/favonia/cloudflare-ddns:1.9.1'
set container name cloudflare-ddns memory '0'
set container name cloudflare-ddns restart 'on-failure'
set container name cloudflare-ddns shared-memory '0'

# coredns - main instance
set container name coredns cap-add 'net-bind-service'
set container name coredns image 'docker.io/coredns/coredns:1.10.1'
set container name coredns memory '0'
set container name coredns network services address '10.5.0.3'
set container name coredns restart 'on-failure'
set container name coredns shared-memory '0'
set container name coredns volume config destination '/config'
set container name coredns volume config source '/config/containers/coredns/config'
set container name coredns volume config mode 'ro'
set container name coredns volume corefile destination '/Corefile'
set container name coredns volume corefile source '/config/containers/coredns/config/Corefile'
set container name coredns volume corefile mode 'ro'
set container name coredns volume vyoshosts destination '/host/etc/hosts'
set container name coredns volume vyoshosts source '/etc/hosts'
set container name coredns volume vyoshosts mode 'ro'

# dnsdist
set container name dnsdist cap-add 'net-bind-service'
set container name dnsdist environment TZ value ${TZ}
set container name dnsdist image 'docker.io/powerdns/dnsdist-17:1.7.3'
set container name dnsdist memory '0'
set container name dnsdist network services address '10.5.0.4'
set container name dnsdist restart 'on-failure'
set container name dnsdist shared-memory '0'
set container name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set container name dnsdist volume config source '/config/containers/dnsdist/config/dnsdist.conf'
set container name dnsdist volume config mode 'ro'

# haproxy-k8s-api
set container name haproxy-k8s-api image 'docker.io/library/haproxy:2.7.6'
set container name haproxy-k8s-api memory '0'
set container name haproxy-k8s-api network services address '10.5.0.2'
set container name haproxy-k8s-api restart 'on-failure'
set container name haproxy-k8s-api shared-memory '0'
set container name haproxy-k8s-api volume config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name haproxy-k8s-api volume config source '/config/containers/haproxy/config/haproxy.cfg'
set container name haproxy-k8s-api volume config mode 'ro'

# node-exporter
set container name node-exporter environment procfs value '/host/proc'
set container name node-exporter environment rootfs value '/host/rootfs'
set container name node-exporter environment sysfs value '/host/sys'
set container name node-exporter image 'quay.io/prometheus/node-exporter:v1.5.0'
set container name node-exporter memory '0'
set container name node-exporter network services address '10.5.0.7'
set container name node-exporter restart 'on-failure'
set container name node-exporter shared-memory '0'
set container name node-exporter volume procfs destination '/host/proc'
set container name node-exporter volume procfs mode 'ro'
set container name node-exporter volume procfs source '/proc'
set container name node-exporter volume rootfs destination '/host/rootfs'
set container name node-exporter volume rootfs mode 'ro'
set container name node-exporter volume rootfs source '/'
set container name node-exporter volume sysfs destination '/host/sys'
set container name node-exporter volume sysfs mode 'ro'
set container name node-exporter volume sysfs source '/sys'

# speedtest-exporter
set container name speedtest-exporter image 'ghcr.io/miguelndecarvalho/speedtest-exporter:v3.5.3'
set container name speedtest-exporter memory '0'
set container name speedtest-exporter network services address '10.5.0.8'
set container name speedtest-exporter restart 'on-failure'
set container name speedtest-exporter shared-memory '0'
