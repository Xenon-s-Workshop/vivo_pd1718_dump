#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:22047632:feb8fdd62f26707ede49971e1ad512d0a1ba5dab; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:12690320:ff85da74245c3b9849a83d56cdf8101ef6b39862 EMMC:/dev/block/platform/bootdevice/by-name/recovery feb8fdd62f26707ede49971e1ad512d0a1ba5dab 22047632 ff85da74245c3b9849a83d56cdf8101ef6b39862:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
