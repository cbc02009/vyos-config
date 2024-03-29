#!/bin/vbash

# Container networks
set container network containers description 'Network for VyOS containers'
set container network containers prefix '10.5.0.0/24'

# cloudflare-ddns
set container name cloudflare-ddns allow-host-networks
set container name cloudflare-ddns environment CF_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set container name cloudflare-ddns environment DOMAINS value 'ipv4.kokoro.wtf'
set container name cloudflare-ddns environment IP6_PROVIDER value "none"
set container name cloudflare-ddns environment TZ value ${TZ}
set container name cloudflare-ddns environment PGID value "1000"
set container name cloudflare-ddns environment PUID value "1000"
set container name cloudflare-ddns image 'docker.io/favonia/cloudflare-ddns:1.11.0'
set container name cloudflare-ddns memory '0'
set container name cloudflare-ddns restart 'on-failure'
set container name cloudflare-ddns shared-memory '0'

# bind
set container name bind cap-add 'net-bind-service'
set container name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set container name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set container name bind memory '0'
set container name bind network containers address '10.5.0.3'
set container name bind restart 'on-failure'
set container name bind shared-memory '0'
set container name bind volume config destination '/etc/bind'
set container name bind volume config source '/config/containers/bind/config'
set container name bind volume config mode 'ro'
set container name bind volume cache source '/tmp/bind/cache'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'

# blocky
set container name blocky image 'ghcr.io/0xerr0r/blocky:v0.23'
set container name blocky memory '0'
set container name blocky network containers address '10.5.0.7'
set container name blocky shared-memory '0'
set container name blocky restart 'on-failure'
set container name blocky environment TZ value ${TZ}
set container name blocky volume config source '/config/containers/blocky/config/config.yml'
set container name blocky volume config destination '/app/config.yml'
set container name blocky volume config mode 'ro'

# dnsdist
set container name dnsdist cap-add 'net-bind-service'
set container name dnsdist environment TZ value ${TZ}
set container name dnsdist image 'docker.io/powerdns/dnsdist-18:1.8.3'
set container name dnsdist arguments '--log-timestamps'
set container name dnsdist memory '0'
set container name dnsdist network containers address '10.5.0.4'
set container name dnsdist restart 'on-failure'
set container name dnsdist shared-memory '0'
set container name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set container name dnsdist volume config source '/config/containers/dnsdist/config/dnsdist.conf'
set container name dnsdist volume config mode 'ro'

# haproxy-k8s-api
set container name haproxy-k8s-api image 'docker.io/library/haproxy:2.9.5'
set container name haproxy-k8s-api memory '0'
set container name haproxy-k8s-api network containers address '10.5.0.2'
set container name haproxy-k8s-api restart 'on-failure'
set container name haproxy-k8s-api shared-memory '0'
set container name haproxy-k8s-api volume config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name haproxy-k8s-api volume config source '/config/containers/haproxy/config/haproxy.cfg'
set container name haproxy-k8s-api volume config mode 'ro'

# Iperf3
set container name iperf3 image 'docker.io/tangentsoft/iperf3:v3.16'
set container name iperf3 allow-host-networks
set container name iperf3 memory '0'
set container name iperf3 restart 'on-failure'
set container name iperf3 shared-memory '0'
set container name iperf3 environment TZ value ${TZ}

# node-exporter
set container name node-exporter environment procfs value '/host/proc'
set container name node-exporter environment rootfs value '/host/rootfs'
set container name node-exporter environment sysfs value '/host/sys'
set container name node-exporter image 'quay.io/prometheus/node-exporter:v1.7.0'
set container name node-exporter memory '0'
set container name node-exporter allow-host-networks
set container name node-exporter restart 'on-failure'
set container name node-exporter shared-memory '0'
set container name node-exporter volume procfs source '/proc'
set container name node-exporter volume procfs destination '/host/proc'
set container name node-exporter volume procfs mode 'ro'
set container name node-exporter volume rootfs source '/'
set container name node-exporter volume rootfs destination '/host/rootfs'
set container name node-exporter volume rootfs mode 'ro'
set container name node-exporter volume sysfs source '/sys'
set container name node-exporter volume sysfs destination '/host/sys'
set container name node-exporter volume sysfs mode 'ro'

# speedtest-exporter
set container name speedtest-exporter image 'ghcr.io/miguelndecarvalho/speedtest-exporter:v3.5.4'
set container name speedtest-exporter memory '0'
set container name speedtest-exporter allow-host-networks
set container name speedtest-exporter restart 'on-failure'
set container name speedtest-exporter shared-memory '0'

# smtp-relay
set container name smtp-relay environment SMTP_DOMAIN value 'kokoro.wtf'
set container name smtp-relay environment SMTP_PASSWORD value ${SECRET_SMTP_PASSWORD}
set container name smtp-relay environment SMTP_PORT value '465'
set container name smtp-relay environment SMTP_SERVER value 'smtp.fastmail.com'
set container name smtp-relay environment SMTP_USERNAME value ${SECRET_SMTP_USERNAME}
set container name smtp-relay image 'ghcr.io/foxcpp/maddy:0.7.1'
set container name smtp-relay memory '0'
set container name smtp-relay network containers address '10.5.0.11'
set container name smtp-relay shared-memory '0'
set container name smtp-relay volume smtp-relay-config destination '/data/maddy.conf'
set container name smtp-relay volume smtp-relay-config mode 'ro'
set container name smtp-relay volume smtp-relay-config source '/config/containers/smtp-relay/config/maddy.conf'

# wildcard certificate
set container name lego-auto image 'ghcr.io/bjw-s/lego-auto:v0.3.0'
set container name lego-auto memory '0'
set container name lego-auto allow-host-networks
set container name lego-auto shared-memory '0'
set container name lego-auto restart 'on-failure'
set container name lego-auto environment TZ value ${TZ}
set container name lego-auto environment LA_DATADIR value '/config'
set container name lego-auto environment LA_CACHEDIR value '/config/.cache'
set container name lego-auto environment LA_EMAIL value 'postmaster@kokoro.wtf'
set container name lego-auto environment LA_PROVIDER value 'cloudflare'
set container name lego-auto environment LA_DOMAINS value '*.kokoro.wtf'
set container name lego-auto environment CF_DNS_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set container name lego-auto volume datadir source '/config/secrets/certs/_.kokoro.wtf'
set container name lego-auto volume datadir destination '/config'
set container name lego-auto volume datadir mode 'rw'

# matchbox
set container name matchbox arguments '-address=0.0.0.0:80 -log-level=debug'
set container name matchbox cap-add 'net-bind-service'
set container name matchbox image 'quay.io/poseidon/matchbox:v0.10.0'
set container name matchbox memory '0'
set container name matchbox network containers address '10.5.0.8'
set container name matchbox shared-memory '0'
set container name matchbox volume matchbox-data destination '/var/lib/matchbox'
set container name matchbox volume matchbox-data mode 'rw'
set container name matchbox volume matchbox-data propagation 'private'
set container name matchbox volume matchbox-data source '/config/containers/matchbox/data'