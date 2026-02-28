# Result

## What I learned

- Linux treats everything as a file (including disks)
- /dev/sdX represents physical disks
- Partitions appear as /dev/sdX1, /dev/sdX2, etc.
- fdisk modifies partition tables
- mkfs creates filesystem structures
- mount attaches filesystem to directory tree
- umount safely detaches it

## Important understanding

Mounting does not copy data.
It links a filesystem into the Linux directory tree.

Without mounting, partition is not accessible.

## Key commands understood

- lsblk → shows block devices
- fdisk → manage partitions
- mkfs → create filesystem
- mount → attach filesystem
- umount → detach filesystem
- df -h → check mounted filesystems
