#!/bin/vbash

# Container networks
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
set container name haproxy-k8s-api image 'docker.io/library/haproxy:2.9.1'
set container name haproxy-k8s-api memory '0'
set container name haproxy-k8s-api network containers address '10.5.0.2'
set container name haproxy-k8s-api restart 'on-failure'
set container name haproxy-k8s-api shared-memory '0'
set container name haproxy-k8s-api volume config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name haproxy-k8s-api volume config source '/config/containers/haproxy/config/haproxy.cfg'
set container name haproxy-k8s-api volume config mode 'ro'

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

# Power DNS Recursor
set container name PowerDNS-Recursor description 'PowerDNS Recursor Server'
set container name PowerDNS-Recursor cap-add 'net-bind-service'
set container name PowerDNS-Recursor command '--forward-zones-file=/config/forward-zones-file --local-address=0.0.0.0 --local-port=53 --etc-hosts-file=/etc/hosts --export-etc-hosts=yes --export-etc-hosts-search-suffix=kokoro.wtf --trace=no'
set container name PowerDNS-Recursor network containers address '10.5.0.21'
set container name PowerDNS-Recursor image 'docker.io/powerdns/pdns-recursor-48:4.8.5'
set container name PowerDNS-Recursor volume config destination '/config'
set container name PowerDNS-Recursor volume config source /config/containers/powerdns/recursor
set container name PowerDNS-Recursor volume hosts destination /etc/hosts
set container name PowerDNS-Recursor volume hosts mode ro
set container name PowerDNS-Recursor volume hosts source /etc/hosts

# Power DNS Authoritative
set container name PowerDNS-Authoritative description 'PowerDNS Authoritative Server'
set container name PowerDNS-Authoritative cap-add 'net-bind-service'
set container name PowerDNS-Authoritative command '--launch=gsqlite3 --local-address=0.0.0.0 --local-port=53 --webserver=yes --webserver-address=0.0.0.0 --webserver-port=8081'
set container name PowerDNS-Authoritative environment PDNS_AUTH_API_KEY value ${PDNS_AUTH_API_KEY}
set container name PowerDNS-Authoritative network containers address '10.5.0.20'
set container name PowerDNS-Authoritative image 'docker.io/powerdns/pdns-auth-48:4.8.4'
set container name PowerDNS-Authoritative volume config destination '/var/lib/powerdns'
set container name PowerDNS-Authoritative volume config source /config/containers/powerdns/authoritative
set container name PowerDNS-Authoritative volume pdns destination /etc/powerdns/pdns.conf
set container name PowerDNS-Authoritative volume pdns source /config/containers/powerdns/authoritative/pdns.conf

# Power DNS Admin
set container name PowerDNS-Admin description 'PowerDNS Admin Web UI'
set container name PowerDNS-Admin environment BIND_ADDRESS value '0.0.0.0'
set container name PowerDNS-Admin environment PORT value 80
set container name PowerDNS-Admin environment SECRET_KEY value ${PDNS_ADMIN_KEY}
set container name PowerDNS-Admin environment SQLALCHEMY_DATABASE_URI value sqlite:////database/powerdns-admin.db
set container name PowerDNS-Admin image 'docker.io/powerdnsadmin/pda-legacy:0.4'
set container name PowerDNS-Admin network containers address '10.5.0.22'
set container name PowerDNS-Admin volume config destination /data
set container name PowerDNS-Admin volume config source /config/containers/powerdns/admin
set container name PowerDNS-Admin volume powerdns-db destination /database
set container name PowerDNS-Admin volume powerdns-db source /config/containers/powerdns/authoritative

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
set container name smtp-relay image 'ghcr.io/foxcpp/maddy:0.7.0'
set container name smtp-relay memory '0'
set container name smtp-relay network containers address '10.5.0.11'
set container name smtp-relay shared-memory '0'
set container name smtp-relay volume smtp-relay-config destination '/data/maddy.conf'
set container name smtp-relay volume smtp-relay-config mode 'ro'
set container name smtp-relay volume smtp-relay-config source '/config/containers/smtp-relay/config/maddy.conf'

# wildcard certificate
set container name lego-auto image 'ghcr.io/bjw-s/lego-auto:v0.2.0'
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

# pihole/unbound
set container name pihole image 'ghcr.io/szinn/pihole-unbound:2023.11.0'
set container name pihole memory '0'
set container name pihole network containers address '10.5.0.7'
set container name pihole shared-memory '0'
set container name pihole restart 'on-failure'
set container name pihole environment TZ value ${TZ}
set container name pihole environment HOSTNAME value 'pihole'
set container name pihole environment PIHOLE_DOMAIN value 'kokoro.wtf'
set container name pihole environment WEBPASSWORD value "${SECRET_PIHOLE_WEBPASSWORD}"
set container name pihole environment WEBTHEME value 'default-auto'
set container name pihole environment DNSSEC value 'true'
set container name pihole environment DNS_BOGUS_PRIV value 'true'
set container name pihole environment DNS_FQDN_REQUIRED value 'true'
set container name pihole environment DNSMASQ_LISTENING value 'single'
set container name pihole environment FTLCONF_LOCAL_IPV4 value '10.5.0.7'
set container name pihole environment FTLCONF_BLOCK_ICLOUD_PR value 'false'
set container name pihole environment REV_SERVER value 'true'
set container name pihole environment REV_SERVER_DOMAIN value 'ctec.run'
set container name pihole environment REV_SERVER_TARGET value '10.5.0.3'
set container name pihole environment REV_SERVER_CIDR value '10.0.0.0/8'
set container name pihole environment PIHOLE_DNS_ value '127.0.0.1#5335'
set container name pihole volume pihole source '/config/containers/pihole/pihole'
set container name pihole volume pihole destination '/etc/pihole'
set container name pihole volume pihole mode 'rw'
set container name pihole volume dnsmasq source '/config/containers/pihole/dnsmasq'
set container name pihole volume dnsmasq destination '/etc/dnsmasq.d'
set container name pihole volume dnsmasq mode 'rw'
set container name pihole volume pihole-ssl source '/config/containers/pihole/10-pihole-ssl.conf'
set container name pihole volume pihole-ssl destination '/etc/lighttpd/conf-enabled/10-pihole-ssl.conf'
set container name pihole volume pihole-ssl mode 'rw'
set container name pihole volume certificate-pem source '/config/secrets/certs/_.kokoro.wtf/combined.pem'
set container name pihole volume certificate-pem destination '/etc/lighttpd/certs/pihole.pem'
set container name pihole volume certificate-pem mode 'ro'