#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:11240352:a719e27477321baee3d87d39638f79b7dedb9283; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:9860000:5e6a669796b33deb7290f22a1131d590f1cea12f EMMC:/dev/block/platform/bootdevice/by-name/recovery a719e27477321baee3d87d39638f79b7dedb9283 11240352 5e6a669796b33deb7290f22a1131d590f1cea12f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
