# List disks and partitions
lsblk

# Open disk partition tool
sudo fdisk /dev/sdb

# Create filesystem
sudo mkfs.ext4 /dev/sdb1

# Create mount directory
sudo mkdir /mnt/testdisk

# Mount partition
sudo mount /dev/sdb1 /mnt/testdisk

# Verify mount
df -h
lsblk

# Unmount partition
sudo umount /mnt/testdisk
