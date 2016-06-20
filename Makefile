include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PSlide
PSlide_FILES = Tweak.xm

ARCHS = armv7 armv7s arm64
THEOS_DEVICE_IP = 192.168.1.102
THEOS_DEVICE_PORT = 22

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
