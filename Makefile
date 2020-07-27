ARCHS = arm64 arm64e
TARGET = iphone:clang:12.2:10.0
INSTALL_TARGET_PROCESSES = Gmail Preferences

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = gmailnoads
gmailnoads_FILES = $(wildcard *.xm *.m)
gmailnoads_EXTRA_FRAMEWORKS = libhdev
gmailnoads_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += pref

include $(THEOS_MAKE_PATH)/aggregate.mk
