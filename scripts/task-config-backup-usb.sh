
#!/bin/bash
#
# Description: Backup config directory and configuration commands to a USB device
#

dest="/media/usb-backup"
disk="/dev/disk/by-id/usb-Kingston_DataTraveler_3.0_60A44C426697F210C9890060-0:0-part1"
user="vyos"

# Mount a formatted exfat USB
if ! findmnt -M "${dest}"; then
    sudo mkdir -p "${dest}"
    sudo mount.exfat-fuse -o "rw,uid=${user},gid=vyattacfg" "${disk}" "${dest}"
fi

# Backup
if findmnt -M "${dest}"; then
    timestamp="$(date +%Y%m%d%H%M%S)"

    # VyOS Commands
    mkdir -p "${dest}/vyos/"
    /opt/vyatta/bin/vyatta-op-cmd-wrapper show configuration commands | gzip -3 -c > "${dest}/vyos/vyos-commands.${timestamp}.gz"

    # VyOS /config
    tar --exclude="overlay*" --exclude="unifi*" -zvcf "${dest}/vyos/vyos-config.${timestamp}.tar.gz" /config

    # Unifi backups
    mkdir -p "${dest}/unifi/"
    rsync -r /config/containers/unifi/data/backup/autobackup/ "${dest}/unifi/"

    # Delete backups older than 1 month
    find "${dest}" -type f -mtime +30 -delete

    # Sync the filesystem
    sync
    # Unmount the USB drive
    sudo umount "${dest}"
fi