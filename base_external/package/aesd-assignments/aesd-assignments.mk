
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################
AESD_ASSIGNMENTS_VERSION = 0c9c13d4845d89587ecd1ba5b6696439f0a99824
AESD_ASSIGNMENTS_SITE = git@github.com:Ankit01020304/aeld-assignment-3-and-later.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS

	$(INSTALL) -D -m 0755 \
		$(@D)/finder-app/writer \
		$(TARGET_DIR)/usr/bin/writer

	$(INSTALL) -D -m 0755 \
		$(@D)/finder-app/finder.sh \
		$(TARGET_DIR)/usr/bin/finder.sh

	$(INSTALL) -D -m 0755 \
		$(@D)/finder-app/finder-test.sh \
		$(TARGET_DIR)/usr/bin/finder-test.sh

	$(INSTALL) -D -m 0755 \
		$(@D)/finder-app/autorun-qemu.sh \
		$(TARGET_DIR)/usr/bin/autorun-qemu.sh

	$(INSTALL) -D -m 0755 \
		$(@D)/finder-app/writer.sh \
		$(TARGET_DIR)/usr/bin/writer.sh

	$(INSTALL) -d \
		$(TARGET_DIR)/etc/finder-app/conf

	cp -r $(@D)/conf/* \
		$(TARGET_DIR)/etc/finder-app/conf/

endef

$(eval $(generic-package))
