# Inherit device configuration
$(call inherit-product, device/semc/shakira/device_robyn.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Call xaokp vendor to get unofficial additions
$(call inherit-product, vendor/xaokp/common_xaokp.mk)

# robyn overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/xaokp/overlay/robyn

# Setup device specific product configuration.
PRODUCT_NAME := aokp_srobyn
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := robyn
PRODUCT_MODEL := E10i
PRODUCT_MANUFACTURER := Sony Ericsson

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_240_320.zip:system/media/bootanimation.zip
