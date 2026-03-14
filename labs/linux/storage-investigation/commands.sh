# =========================
# Linux Storage Investigation
# =========================

# Show block devices, partitions and mount points
lsblk

# Show filesystem usage in human-readable format
df -h

# Show size of directories inside /var
du -sh /var/*
du -h /var --max-depth=1

# Show currently mounted filesystems
mount

# Check memory and swap usage
free -h

# Show active swap devices/files
swapon --show

# Turn swap off (if needed)
sudo swapoff /swapfile

# Create swap file
sudo fallocate -l 2G /swapfile

# Set secure permissions for swap file
sudo chmod 600 /swapfile

# Prepare file as swap area
sudo mkswap /swapfile

# Enable swap
sudo swapon /swapfile

# Verify swap again
free -h
swapon --show

# Check current swappiness value
cat /proc/sys/vm/swappiness

# Search for swap-related kernel parameters
grep -r swap /proc/sys

# Check swap entry in fstab
cat /etc/fstab

# Example of swap entry in fstab
# /swapfile none swap sw 0 0

# Run filesystem check on test partitions
sudo fsck /dev/vdc1
sudo fsck /dev/vdc2
sudo fsck /dev/vda1

# Show Physical Volumes
pvs

# Show Volume Groups
vgs

# Show Logical Volumes
lvs

# Show UUIDs of filesystems
blkid

# Show information about partition tables
sudo fdisk -l

# Test fstab syntax by mounting everything from fstab
sudo mount -a
