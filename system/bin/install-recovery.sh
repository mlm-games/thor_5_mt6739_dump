#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:11244448:7b75042607cfe3f3daa8a85e2ec457221639b713; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:9864096:92ce37f298ef72f57cc53145b9b4b1e29f323b5c EMMC:/dev/block/platform/bootdevice/by-name/recovery 7b75042607cfe3f3daa8a85e2ec457221639b713 11244448 92ce37f298ef72f57cc53145b9b4b1e29f323b5c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
