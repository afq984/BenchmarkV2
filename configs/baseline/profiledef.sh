#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="benchmark"
iso_label="BENCH$(date +%Y%m)"
iso_publisher="afq984 <https://github.com/afq984/BenchmarkV2>"
iso_version="2.2.1"
iso_application="Benchmark v$iso_version"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/buildgcc.sh"]="0:0:755"
  ["/buildclang.sh"]="0:0:755"
  ["/root/run.sh"]="0:0:755"
  ["/root/tools/hwmodel"]="0:0:755"
  ["/root/tools/qr.sh"]="0:0:755"
  ["/root/tools/result.sh"]="0:0:755"
)
