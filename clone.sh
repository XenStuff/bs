rm -rf \
vendor/overlays/404 -v \
vendor/gms -v

git clone \
https://github.com/XenStuff/android_device_xiaomi_sdm660-common device/xiaomi/sdm660-common \
https://github.com/XenStuff/android_vendor_xiaomi_sdm660-common vendor/xiaomi/sdm660-common \
https://github.com/XenStuff/android_vendor_xiaomi_lavender vendor/xiaomi/lavender \
https://github.com/XenStuff/android_device_xiaomi_lavender-1 device/xiaomi/lavender \
https://github.com/XenStuff/kernel_xiaomi_lavender-pred kernel/xiaomi/sdm660 --depth=1 \
https://github.com/XenStuff/android_vendor_overlays_404 vendor/overlays/404 \
https://gitlab.com/xenxynon/proprietary_vendor_gms vendor/gms 
