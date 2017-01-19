#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9994240 7a8b13c007e0b6048f4e095937cde398a0d0c523 7473152 7d05c6efd4e9e6eff0a80727a10738e3c4ef3840
fi

if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:9994240:7a8b13c007e0b6048f4e095937cde398a0d0c523; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:7473152:7d05c6efd4e9e6eff0a80727a10738e3c4ef3840 EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery 7a8b13c007e0b6048f4e095937cde398a0d0c523 9994240 7d05c6efd4e9e6eff0a80727a10738e3c4ef3840:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
