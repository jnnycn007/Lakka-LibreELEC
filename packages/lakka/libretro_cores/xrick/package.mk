PKG_NAME="xrick"
PKG_VERSION="f281911"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/libretro/xrick-libretro"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_SHORTDESC="Rick Dangerous Game Engine"
PKG_TOOLCHAIN="make"

PKG_MAKE_OPTS_TARGET="-f Makefile.libretro"

pre_make_target() {
  PKG_MAKE_OPTS_TARGET+=" CC=${CC}"
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
    cp -v xrick_libretro.so ${INSTALL}/usr/lib/libretro/
}
