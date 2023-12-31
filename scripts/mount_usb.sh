
#!/bin/bash
#
# Description: Backup VyOS configuration to a USB device
#
dest="/media/usb-backup"
disk="/dev/disk/by-id/usb-Kingston_DataTraveler_3.0_60A44C426697F210C9890060-0:0-part1"
user="vyos"

# Mount a formatted exfat USB
if ! findmnt -M "${dest}"; then
    sudo mkdir -p "${dest}"
    sudo mount.exfat-fuse -o "rw,uid=${user},gid=vyattacfg" "${disk}" "${dest}"
fi