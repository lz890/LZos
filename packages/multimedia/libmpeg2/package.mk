# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libmpeg2"
PKG_VERSION="0.5.1"

PKG_LICENSE="GPLv2"
PKG_SITE="https://aur.archlinux.org/packages/lib32-libmpeg2"
PKG_URL="https://web.archive.org/web/20250125142051if_/https://libmpeg2.sourceforge.io/files/libmpeg2-0.5.1.tar.gz"
PKG_DEPENDS_HOST="toolchain:host"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="The MPEG Library is a collection of C routines to decode MPEG-1 and MPEG-2 movies."

PKG_CONFIGURE_OPTS_TARGET="--disable-sdl \
                           --without-x"

post_makeinstall_target() {
  rm -rf ${INSTALL}/usr/bin
}
