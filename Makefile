GO_EASY_ON_ME=1

include theos/makefiles/common.mk

TWEAK_NAME = inPulseNotifier

inPulseNotifier_FILES = Tweak.xm BTStackManager.m BTDevice.m INPreferenceManager.m INAlertManager.m INAlertData.m
SUBPROJECTS = settings

include theos/makefiles/tweak.mk
inPulseNotifier_FRAMEWORKS = CoreTelephony IOKit UIKit Foundation QuartzCore CoreGraphics AddressBook
inPulseNotifier_CFLAGS = -Iinclude 
inPulseNotifier_LDFLAGS = -lBTstack

SUBPROJECTS = settings
include theos/makefiles/aggregate.mk
