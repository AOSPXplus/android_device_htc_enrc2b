#
# Copyright (C) 2012 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS := device/htc/enrc2b/overlay

#Recovery

PRODUCT_COPY_FILES += \
    device/htc/enrc2b/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/enrc2b/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/enrc2b/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/enrc2b/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/enrc2b/recovery/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Files needed for boot image
PRODUCT_COPY_FILES := \
    device/htc/enrc2b/ramdisk/init.enrc2b.rc:root/init.enrc2b.rc \
    device/htc/enrc2b/ramdisk/init.usb.rc:root/init.usb.rc \
    device/htc/enrc2b/ramdisk/init.trace.rc:root/init.trace.rc \
    device/htc/enrc2b/ramdisk/init.scripts.sh:root/init.scripts.sh \
    device/htc/enrc2b/ramdisk/ueventd.rc:root/ueventd.rc \
    device/htc/enrc2b/ramdisk/ueventd.enrc2b.rc:root/ueventd.enrc2b.rc \
    device/htc/enrc2b/ramdisk/fstab.enrc2b:root/fstab.enrc2b


# Prebuilt Audio/GPS/Camera/Wi-Fi configs
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/prebuilt/dsp/AIC3008_REG_DualMic_XA.csv:system/etc/AIC3008_REG_DualMic_XA.csv \
    device/htc/enrc2b/prebuilt/dsp/AIC3008_REG_DualMic.csv:system/etc/AIC3008_REG_DualMic.csv \
    device/htc/enrc2b/prebuilt/dsp/DSP_number.txt:system/etc/DSP_number.txt \
    device/htc/enrc2b/configs/nvcamera.conf:system/etc/nvcamera.conf \
    device/htc/enrc2b/configs/nvcamera_2nd.conf:system/etc/nvcamera_2nd.conf \
    device/htc/enrc2b/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/enrc2b/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/enrc2b/configs/gps.conf:system/etc/gps.conf \
    device/htc/enrc2b/configs/gps/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    device/htc/enrc2b/configs/gps/gpsconfig_release.xml:system/etc/gps/gpsconfig_release.xml \
    device/htc/enrc2b/configs/htcfs.conf:system/etc/htcfs.conf \
    device/htc/enrc2b/configs/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/htc/enrc2b/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/enrc2b/configs/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/htc/enrc2b/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/htc/enrc2b/configs/calibration:system/etc/calibration \
    device/htc/enrc2b/configs/asound.conf:system/etc/asound.conf \
    device/htc/enrc2b/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/enrc2b/configs/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    device/htc/enrc2b/configs/enctune.conf:system/etc/enctune.conf \
    device/htc/enrc2b/configs/sysctl.conf:system/etc/sysctl.conf \
    device/htc/enrc2b/configs/audio_effects.conf:system/etc/audio_effects.conf

  # Prebuilt Alsa configs
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/prebuilt/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
    device/htc/enrc2b/prebuilt/usr/share/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

# Input device configeration files
# for remapped APP_SWITCH to MENU
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# properitary ones
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/prebuilt/usr/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    device/htc/enrc2b/prebuilt/usr/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    device/htc/enrc2b/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/enrc2b/prebuilt/usr/idc/tv-touchscreen.idc:system/usr/idc/tv-touchscreen.idc \
    device/htc/enrc2b/prebuilt/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc

PRODUCT_COPY_FILES += \
    device/htc/enrc2b/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so

# Dirty hack for su
PRODUCT_COPY_FILES += \
		device/htc/enrc2b/scripts/01-su:system/etc/init.d/01-su

# Sound
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/prebuilt/soundimage/CodecDSPID.txt:system/etc/soundimage/CodecDSPID.txt \
    device/htc/enrc2b/prebuilt/soundimage/CodecDSPID_XA.txt:system/etc/soundimage/CodecDSPID_XA.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_BT_CarMode.txt:system/etc/soundimage/Sound_BT_CarMode.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_FM_HP_XA.txt:system/etc/soundimage/Sound_FM_HP_XA.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_FM_SPK_XA.txt:system/etc/soundimage/Sound_FM_SPK_XA.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Note_Recording.txt:system/etc/soundimage/Sound_Note_Recording.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Original_DOCK.txt:system/etc/soundimage/Sound_Original_DOCK.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Original_HP.txt:system/etc/soundimage/Sound_Original_HP.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Original_HP_XA.txt:system/etc/soundimage/Sound_Original_HP_XA.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Original_SPK_RING.txt:system/etc/soundimage/Sound_Original_SPK_RING.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Original_SPK_RING_XA.txt:system/etc/soundimage/Sound_Original_SPK_RING_XA.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Original_SPK_XA.txt:system/etc/soundimage/Sound_Original_SPK_XA.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Phone_Original_BT.txt:system/etc/soundimage/Sound_Phone_Original_BT.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Phone_Original_DOCK.txt:system/etc/soundimage/Sound_Phone_Original_DOCK.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Phone_Original_HAC.txt:system/etc/soundimage/Sound_Phone_Original_HAC.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Phone_Original_SPK_XA.txt:system/etc/soundimage/Sound_Phone_Original_SPK_XA.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Phone_Original_TTY.txt:system/etc/soundimage/Sound_Phone_Original_TTY.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_SpeakerVR_Recording.txt:system/etc/soundimage/Sound_SpeakerVR_Recording.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voice_Recording_AMR.txt:system/etc/soundimage/Sound_Voice_Recording_AMR.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voip_Original_BT.txt:system/etc/soundimage/Sound_Voip_Original_BT.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voip_Original_BT_AEC.txt:system/etc/soundimage/Sound_Voip_Original_BT_AEC.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voip_Original_HP.txt:system/etc/soundimage/Sound_Voip_Original_HP.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voip_Original_HP_AEC.txt:system/etc/soundimage/Sound_Voip_Original_HP_AEC.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voip_Original_REC.txt:system/etc/soundimage/Sound_Voip_Original_REC.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voip_Original_REC_AEC.txt:system/etc/soundimage/Sound_Voip_Original_REC_AEC.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voip_Original_SPK.txt:system/etc/soundimage/Sound_Voip_Original_SPK.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voip_Original_SPK_XA.txt:system/etc/soundimage/Sound_Voip_Original_SPK_XA.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voip_Original_SPK_AEC.txt:system/etc/soundimage/Sound_Voip_Original_SPK_AEC.txt \
    device/htc/enrc2b/prebuilt/soundimage/Sound_Voip_Original_SPK_AEC_XA.txt:system/etc/soundimage/Sound_Voip_Original_SPK_AEC_XA.txt

# audio tfa - actually useless but keep it 
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/prebuilt/tfa/fm.config:system/etc/tfa/fm.config \
    device/htc/enrc2b/prebuilt/tfa/fm.eq:system/etc/tfa/fm.eq \
    device/htc/enrc2b/prebuilt/tfa/fm.preset:system/etc/tfa/fm.preset \
    device/htc/enrc2b/prebuilt/tfa/fm.speaker:system/etc/tfa/fm.speaker \
    device/htc/enrc2b/prebuilt/tfa/playback.config:system/etc/tfa/playback.config \
    device/htc/enrc2b/prebuilt/tfa/playback.eq:system/etc/tfa/playback.eq \
    device/htc/enrc2b/prebuilt/tfa/playback.preset:system/etc/tfa/playback.preset \
    device/htc/enrc2b/prebuilt/tfa/playback.speaker:system/etc/tfa/playback.speaker \
    device/htc/enrc2b/prebuilt/tfa/recorder.config:system/etc/tfa/recorder.config \
    device/htc/enrc2b/prebuilt/tfa/recorder.eq:system/etc/tfa/recorder.eq \
    device/htc/enrc2b/prebuilt/tfa/recorder.preset:system/etc/tfa/recorder.preset \
    device/htc/enrc2b/prebuilt/tfa/recorder.speaker:system/etc/tfa/recorder.speaker \
    device/htc/enrc2b/prebuilt/tfa/ReleaseNote.txt:system/etc/tfa/ReleaseNote.txt \
    device/htc/enrc2b/prebuilt/tfa/ring.config:system/etc/tfa/ring.config \
    device/htc/enrc2b/prebuilt/tfa/ring.eq:system/etc/tfa/ring.eq \
    device/htc/enrc2b/prebuilt/tfa/ring.preset:system/etc/tfa/ring.preset \
    device/htc/enrc2b/prebuilt/tfa/ring.speaker:system/etc/tfa/ring.speaker \
    device/htc/enrc2b/prebuilt/tfa/tcoef.speaker:system/etc/tfa/tcoef.speaker \
    device/htc/enrc2b/prebuilt/tfa/tfa9887.config:system/etc/tfa/tfa9887.config \
    device/htc/enrc2b/prebuilt/tfa/tfa9887.patch:system/etc/tfa/tfa9887.patch \
    device/htc/enrc2b/prebuilt/tfa/tfa9887.speaker:system/etc/tfa/tfa9887.speaker \
    device/htc/enrc2b/prebuilt/tfa/video.config:system/etc/tfa/video.config \
    device/htc/enrc2b/prebuilt/tfa/video.eq:system/etc/tfa/video.eq \
    device/htc/enrc2b/prebuilt/tfa/video.preset:system/etc/tfa/video.preset \
    device/htc/enrc2b/prebuilt/tfa/video.speaker:system/etc/tfa/video.speaker \
    device/htc/enrc2b/prebuilt/tfa/voice.config:system/etc/tfa/voice.config \
    device/htc/enrc2b/prebuilt/tfa/voice.eq:system/etc/tfa/voice.eq \
    device/htc/enrc2b/prebuilt/tfa/voice.preset:system/etc/tfa/voice.preset \
    device/htc/enrc2b/prebuilt/tfa/voice.speaker:system/etc/tfa/voice.speaker

# Vold.fstab
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/vold.fstab:system/etc/vold.fstab

# Hostapd
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/hostap/hostapd:system/bin/hostapd

    
PRODUCT_PACKAGES += \
	hostapd_cli \
        calibrator

# video
PRODUCT_PACKAGES += \
	libstagefrighthw

# camera wrapper 
PRODUCT_PACKAGES += \
	camera.tegra
	
# lights
PRODUCT_PACKAGES += \
	lights.tegra

# power
PRODUCT_PACKAGES += \
	power.tegra
        
#NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    libtinyalsa \
    libaudioutils \
    libinvensense_mpl

# iw
PRODUCT_PACKAGES += \
    iw 

# pollyd
PRODUCT_PACKAGES += \
    Polly \
    pollyd

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    librs_jni 

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    sdcard \
    libmtp

# Permissions
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
        frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
        packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.setupwizard.enable_bypass=1 \
        dalvik.vm.execution-mode=int:jit \
        dalvik.vm.lockprof.threshold=500 \
        dalvik.vm.dexopt-flags=m=y \
        persist.sys.usb.config=mtp,adb \
        ro.adb.secure=0

# Cell Broadcasts
PRODUCT_PROPERTY_OVERRIDES += \
        ro.cellbroadcast.emergencyids=0-65534 

# Tegra 3 spacific overrides
PRODUCT_PROPERTY_OVERRIDES += \
        persist.tegra.nvmmlite=1 \
        ro.vendor.extension_library=/system/lib/libhtc-opt2.so \
        tf.enable=y

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_GB xhdpi

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/htc/enrc2b/enrc2b-vendor.mk)
$(call inherit-product, device/htc/enrc2b/phone-xhdpi-1024-dalvik-heap.mk) ## Needs a specific config for the device to boot - Lloir


