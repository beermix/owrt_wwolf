#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=atop
PKG_VERSION:=27dbe4e

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/Atoptool/atop
PKG_SOURCE_VERSION:=$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/atop
  SECTION:=admin
  CATEGORY:=Administration
  TITLE:=System and process monitor for Linux
  DEPENDS:=+zlib +libncurses
  URL:=https://www.atoptool.nl/
  MAINTAINER:=Toni Uhlig <matzeton@googlemail.com>
endef

define Package/atop/description
  Atop is an ASCII full-screen performance monitor for
  Linux that is capable of reporting the activity of all
  processes (even if processes have finished during the
  interval), daily logging of system and process activity
  for long-term analysis, highlighting overloaded system
  resources by using colors, etcetera. At regular
  intervals, it shows system-level activity related to the
  CPU, memory, swap, disks (including LVM) and network
  layers, and for every process (and thread) it shows e.g.
  the CPU utilization, memory growth, disk utilization,
  priority, username, state, and exit code. In combination
  with the optional kernel module netatop, it even shows
  network activity per process/thread.
endef

TARGET_CFLAGS := $(filter-out -O%,$(TARGET_CFLAGS)) -Os

MAKE_FLAGS += \
	CFLAGS+="-Wno-misleading-indentation -Wno-unused-const-variable -Wno-format-truncation"

define Package/atop/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/atop $(1)/usr/bin/
endef

$(eval $(call BuildPackage,atop))
