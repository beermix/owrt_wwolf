define Device/generic
  DEVICE_TITLE := Generic x86/legacy
  DEVICE_PACKAGES += kmod-r8169
	kmod-tg3 kmod-via-rhine kmod-via-velocity kmod-forcedeth
  GRUB2_VARIANT := legacy
endef
TARGET_DEVICES += generic
