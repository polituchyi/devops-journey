During this lab the Linux storage system was investigated and several storage
monitoring and troubleshooting tools were used.

Block devices and partitions were inspected using the lsblk command. This
allowed identification of available disks, their partitions and mount points.

Filesystem usage was analyzed using df -h, which provided information about
total, used and available disk space on mounted filesystems.

Directory sizes were inspected using du to identify which directories consume
the most storage space.

Mounted filesystems were verified using the mount command to understand how
devices are attached to the system.

Memory and swap usage were analyzed using free -h and swapon --show. A swap
file was created, configured and enabled using fallocate, chmod, mkswap and
swapon.

Swap configuration persistence was verified through the /etc/fstab file.

Kernel memory management behavior was examined by checking the swappiness
parameter located at /proc/sys/vm/swappiness.

Filesystem health was tested using fsck on available partitions.

Logical Volume Manager components were inspected using the pvs, vgs and lvs
commands to identify physical volumes, volume groups and logical volumes.

This investigation provided practical experience with disk monitoring,
swap management, filesystem integrity checks and LVM inspection in Linux.
