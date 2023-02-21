#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/soc/11230000.mmc/by-name/recovery$(getprop ro.boot.slot_suffix):41943040:f0d6348688a6bae72052559223831c9eaabecadf; then
  applypatch --bonus /vendor/etc/recovery-resource.dat \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/soc/11230000.mmc/by-name/boot$(getprop ro.boot.slot_suffix):33554432:489f86bab5584ab7db8962e59c2768273ab24979 \
          --target EMMC:/dev/block/platform/soc/11230000.mmc/by-name/recovery$(getprop ro.boot.slot_suffix):41943040:f0d6348688a6bae72052559223831c9eaabecadf && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
