#!/bin/vbash

set system domain-name '${INTERNAL_DOMAIN}'
set system host-name 'gateway'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys shinobu key 'AAAAC3NzaC1lZDI1NTE5AAAAILJMeEa+xfvD5/pyA6wim4IZywbdcI7SboTzEaysVGN6'
set system login user vyos authentication public-keys shinobu type 'ssh-ed25519'
set system login user vyos authentication public-keys yuzu key 'AAAAC3NzaC1lZDI1NTE5AAAAIDsav6iUbSXpAyLG7JSN9UGcSf42uopBpDlUtRV/eXng'
set system login user vyos authentication public-keys yuzu type 'ssh-ed25519'
set system login user vyos authentication public-keys suletta key 'AAAAC3NzaC1lZDI1NTE5AAAAIGTj3MMx5xpemNeye6j3iJjnQq7L0I4RRSicLI1AFUXh'
set system login user vyos authentication public-keys suletta type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

# TODO
# set system syslog host 10.45.0.2 facility kern level 'warning'
# set system syslog host 10.45.0.2 facility kern protocol 'tcp'
# set system syslog host 10.45.0.2 port '6001'

# set system task-scheduler task backup-config crontab-spec '30 0 * * *'
# set system task-scheduler task backup-config executable path '/config/scripts/custom-config-backup.sh'

set system time-zone '${TZ}'
