PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
SUPERUSER_EMBEDDED := true
TARGET_ARCH := arm


PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google


PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# init.d support
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/cm/prebuilt/common/bin/sysinit:system/bin/sysinit


# userinit support
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit


# CM-specific init file
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/init.local.rc:root/init.cm.rc \
    vendor/cm/prebuilt/common/etc/init.superuser.rc:root/init.superuser.rc


# Optional CM packages
PRODUCT_PACKAGES += \
    procmem \
    procrank \
    Terminal \
    Superuser

PRODUCT_PACKAGES += \
    su \
    sqlite \
    busybox

BOARD_SEPOLICY_DIRS += \
    vendor/cm/sepolicy

BOARD_SEPOLICY_UNION += \
    su.te \
    sysinit.te


# Google Apps

ifeq ($(TARGET_ARCH),arm)
PRODUCT_COPY_FILES += \
	vendor/cm/gapps/arm/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libAppDataSearch.so:system/priv-app/PrebuiltGmsCore/lib/arm/libAppDataSearch.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libconscrypt_gmscore_jni.so:system/priv-app/PrebuiltGmsCore/lib/arm/libconscrypt_gmscore_jni.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libdirect-audio.so:system/priv-app/PrebuiltGmsCore/lib/arm/libdirect-audio.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libgames_rtmp_jni.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgames_rtmp_jni.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libgcastv2_base.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgcastv2_base.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libgcastv2_support.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgcastv2_support.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libgmscore.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgmscore.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libgms-ocrclient.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgms-ocrclient.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libjgcastservice.so:system/priv-app/PrebuiltGmsCore/lib/arm/libjgcastservice.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libNearbyApp.so:system/priv-app/PrebuiltGmsCore/lib/arm/libNearbyApp.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libsslwrapper_jni.so:system/priv-app/PrebuiltGmsCore/lib/arm/libsslwrapper_jni.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libwearable-selector.so:system/priv-app/PrebuiltGmsCore/lib/arm/libwearable-selector.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libWhisper.so:system/priv-app/PrebuiltGmsCore/lib/arm/libWhisper.so
endif

ifneq ($(TARGET_ARCH),x86)
PRODUCT_COPY_FILES += \
 	vendor/cm/gapps/$(TARGET_ARCH)/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
        vendor/cm/gapps/$(TARGET_ARCH)/lib/libgoogle_hotword_jni.so:system/lib/libgoogle_hotword_jni.so \
	vendor/cm/gapps/$(TARGET_ARCH)/lib/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
	vendor/cm/gapps/$(TARGET_ARCH)/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so
endif

ifeq ($(TARGET_ARCH),x86)
PRODUCT_COPY_FILES += \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/Velvet/lib/$(TARGET_ARCH)/libcronet.so:system/priv-app/Velvet/lib/$(TARGET_ARCH)/libcronet.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/Velvet/lib/$(TARGET_ARCH)/libvcdecoder_jni.so:system/priv-app/Velvet/lib/$(TARGET_ARCH)/libvcdecoder_jni.so.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/Velvet/lib/$(TARGET_ARCH)/libgoogle_recognizer_jni_l.so:system/priv-app/Velvet/lib/$(TARGET_ARCH)/libgoogle_recognizer_jni_l.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/Velvet/lib/$(TARGET_ARCH)/libgoogle_hotword_jni.so:system/priv-app/Velvet/lib/$(TARGET_ARCH)/libgoogle_hotword_jni.so
endif


ifeq ($(TARGET_ARCH),arm64)
PRODUCT_COPY_FILES += \
	vendor/cm/gapps/arm/lib64/libvorbisencoder.so:system/lib64/libvorbisencoder.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/Hotword/Hotword.apk:system/priv-app/Hotword/Hotword.apk \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libAppDataSearch.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libAppDataSearch.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libconscrypt_gmscore_jni.so:system/priv-app/PrebuiltGmsCore/lib/arm/libconscrypt_gmscore_jni.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libdirect-audio.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libdirect-audio.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libgames_rtmp_jni.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libgames_rtmp_jni.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libgcastv2_base.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libgcastv2_base.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libgcastv2_support.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libgcastv2_support.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libgmscore.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libgmscore.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libgmscore.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgmscore.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libgms-ocrclient.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libgms-ocrclient.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libjgcastservice.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libjgcastservice.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libNearbyApp.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libNearbyApp.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm/libNearbyApp.so:system/priv-app/PrebuiltGmsCore/lib/arm/libNearbyApp.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libsslwrapper_jni.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libsslwrapper_jni.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libwearable-selector.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libwearable-selector.so \
 	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/lib/arm64/libWhisper.so:system/priv-app/PrebuiltGmsCore/lib/arm64/libWhisper.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/Velvet/lib/$(TARGET_ARCH)/libcronet.so:system/priv-app/Velvet/lib/$(TARGET_ARCH)/libcronet.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/Velvet/lib/$(TARGET_ARCH)/libvcdecoder_jni.so:system/priv-app/Velvet/lib/$(TARGET_ARCH)/libvcdecoder_jni.so.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/Velvet/lib/$(TARGET_ARCH)/libgoogle_recognizer_jni_l.so:system/priv-app/Velvet/lib/$(TARGET_ARCH)/libgoogle_recognizer_jni_l.so \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/Velvet/lib/$(TARGET_ARCH)/libgoogle_hotword_jni.so:system/priv-app/Velvet/lib/$(TARGET_ARCH)/libgoogle_hotword_jni.so
endif

PRODUCT_COPY_FILES += \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/PrebuiltGmsCore/PrebuiltGmsCore.apk:system/priv-app/PrebuiltGmsCore/PrebuiltGmsCore.apk \
	vendor/cm/gapps/$(TARGET_ARCH)/priv-app/Velvet/Velvet.apk:system/priv-app/Velvet/Velvet.apk \
	vendor/cm/gapps/common/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk \
	vendor/cm/gapps/common/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk \
	vendor/cm/gapps/common/etc/permissions/com.google.android.camera2.xml:system/etc/permissions/com.google.android.camera2.xml \
	vendor/cm/gapps/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	vendor/cm/gapps/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
	vendor/cm/gapps/common/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	vendor/cm/gapps/common/framework/com.google.android.camera2.jar:system/framework/com.google.android.camera2.jar \
	vendor/cm/gapps/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
	vendor/cm/gapps/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
	vendor/cm/gapps/common/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
	vendor/cm/gapps/common/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk:system/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk \
	vendor/cm/gapps/common/priv-app/GoogleFeedback/GoogleFeedback.apk:system/priv-app/GoogleFeedback/GoogleFeedback.apk \
	vendor/cm/gapps/common/priv-app/Phonesky/Phonesky.apk:system/priv-app/Phonesky/Phonesky.apk \
	vendor/cm/gapps/common/priv-app/SetupWizard/SetupWizard.apk:system/priv-app/SetupWizard/SetupWizard.apk \
	vendor/cm/gapps/common/priv-app/GoogleLoginService/GoogleLoginService.apk:system/priv-app/GoogleLoginService/GoogleLoginService.apk \
	vendor/cm/gapps/common/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk:system/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk \
	vendor/cm/gapps/common/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk:system/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk \
	vendor/cm/gapps/common/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk:system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk
