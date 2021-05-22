PKG_NAME="core_info"
PKG_VERSION="62b5384"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/libretro/libretro-core-info"
PKG_URL="${PKG_SITE}.git"
PKG_SHORTDESC="Info files for libretro cores"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
    cp -v ${PKG_BUILD}/*.info ${INSTALL}/usr/lib/libretro/
}

