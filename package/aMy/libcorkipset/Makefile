#
# Copyright (C) 2011-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
# PKG_SOURCE_URL:=https://github.com/rogers0/libcorkipset PKG_VERSION:=91e42e2

include $(TOPDIR)/rules.mk

PKG_NAME:=libcorkipset
PKG_VERSION:=19470fa
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/rogers0/libcorkipset
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_SOURCE_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_SOURCE_VERSION).tar.xz

PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libcorkipset
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=libcorkipset
  DEPENDS:=+libpthread +librt +libcork +check
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	sed -e 's%#include <ipset%#include <libcorkipset%' -e 's%#include "ipset%#include "libcorkipset%' -i $(PKG_BUILD_DIR)/include/ipset/*.h $(PKG_BUILD_DIR)/*/*/*/*.c $(PKG_BUILD_DIR)/*/*/*/*.c.in $(PKG_BUILD_DIR)/*/*/*.c $(PKG_BUILD_DIR)/*/*.c

	mv -f $(PKG_BUILD_DIR)/include/ipset $(PKG_BUILD_DIR)/include/libcorkipset
endef

CMAKE_OPTIONS += \
	-DCMAKE_BUILD_TYPE=Release
	
define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/libcorkipset $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libcorkipset/* $(1)/usr/include/libcorkipset/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig
endef

define Package/libcorkipset/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libcorkipset.so.* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libcorkipset))
