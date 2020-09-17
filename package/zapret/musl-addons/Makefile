#

include $(TOPDIR)/rules.mk

PKG_NAME:=musl-addons
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/musl-addons
  SECTION:=devel
  CATEGORY:=Development
  DEPENDS:=
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) $(TARGET_CONFIGURE_OPTS)
endef

define Package/musl-addons/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/musl-addons $(1)/usr/bin/
endef

$(eval $(call BuildPackage,musl-addons))

