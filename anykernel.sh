### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=### Test Default Kernel ###
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=oriole
device.name2=Oriole
device.name3=Pixel 6
device.name4=raven
device.name5=Raven
device.name6=Pixel 6 Pro
supported.versions=13
'; } # end properties


### AnyKernel install
## trim partitions
fstrim -v /data;

# boot shell variables
block=boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
dump_boot;

# remove old root patch avoidance hack
patch_cmdline "skip_override" "";

write_boot;
## end boot install
