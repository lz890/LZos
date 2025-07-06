# Copyright (C) 2023 JELOS (https://github.com/JustEnoughLinuxOS)

PKG_NAME="asus-firmware"
PKG_VERSION="be60c1b"
#PKG_LICENSE="https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/LICENSE.cirrus" # Probably
PKG_SITE="https://github.com/flukejones/asusctl"
PKG_URL="${PKG_SITE}.git"
PKG_LONGDESC="ASUS ROG Ally audio firmware"
PKG_DEPENDS_TARGET="linux"
PKG_TOOLCHAIN="manual"

make_target() {
  : 
}

makeinstall_target() {
  mkdir -p ${INSTALL}/$(get_full_firmware_dir)/cirrus ||:
 # rsync -a cirrus/* ${INSTALL}/$(get_full_firmware_dir)/cirrus/
}
