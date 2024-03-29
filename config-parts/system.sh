#!/bin/vbash

set system domain-name 'ctec.run'
set system host-name 'gateway'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys Shinobu key 'AAAAC3NzaC1lZDI1NTE5AAAAILJMeEa+xfvD5/pyA6wim4IZywbdcI7SboTzEaysVGN6'
set system login user vyos authentication public-keys Shinobu type 'ssh-ed25519'
set system login user vyos authentication public-keys Yuzu key 'AAAAC3NzaC1lZDI1NTE5AAAAIDsav6iUbSXpAyLG7JSN9UGcSf42uopBpDlUtRV/eXng'
set system login user vyos authentication public-keys Yuzu type 'ssh-ed25519'
set system login user vyos authentication public-keys Sulleta key 'AAAAC3NzaC1lZDI1NTE5AAAAIGTj3MMx5xpemNeye6j3iJjnQq7L0I4RRSicLI1AFUXh'
set system login user vyos authentication public-keys Sulleta type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system syslog global facility all level info
set system syslog host ${LB_VECTOR} facility kern level 'warning'
set system syslog host ${LB_VECTOR} format octet-counted
set system syslog host ${LB_VECTOR} protocol 'tcp'
set system syslog host ${LB_VECTOR} port '6001'

set system option performance throughput

set system task-scheduler task backup-config crontab-spec '30 0 * * *'
set system task-scheduler task backup-config executable path '/config/scripts/task-config-backup-usb.sh'

set system time-zone ${TZ}
