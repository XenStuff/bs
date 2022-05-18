# sync rom
mkdir ~/m/404
cd ~/m/404
repo init -u https://github.com/P-404/android_manifest -b shinka 
git clone https://github.com/XenStuff/android_device_xiaomi_sdm660-common device/xiaomi/sdm660-common
git clone https://github.com/XenStuff/android_device_xiaomi_lavender-1 device/xiaomi/lavender
git clone https://github.com/XenStuff/android_vendor_xiaomi_sdm660-common vendor/xiaomi/sdm660-common
git clone https://github.com/XenStuff/android_vendor_xiaomi_lavender vendor/xiaomi/lavender
git clone https://github.com/XenStuff/kernel_xiaomi_lavender-pred kernel/xiaomi/sdm660
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync
rm -rf vendor/qcom/opensource/commonsys/display
git clone https://github.com/xenxynon/vendor_qcom_opensource_commonsys_display vendor/qcom/opensource/commonsys/display

# build rom
source build/envsetup.sh
lunch p404_lavender-userdebug
export WITH_GMS=true
export TZ=Asia/Kolkata #put before last build command
make bacon | tee log.txt
