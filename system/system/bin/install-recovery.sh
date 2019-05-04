#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:100663296:650f7c7faf26093e89a02699832ea0c73c4df4a9; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:100663296:3795d6b80a6ae7a71285eadb20d4efdf565e5d05 EMMC:/dev/block/bootdevice/by-name/recovery 650f7c7faf26093e89a02699832ea0c73c4df4a9 100663296 3795d6b80a6ae7a71285eadb20d4efdf565e5d05:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
