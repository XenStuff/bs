# sync rom
mkdir ~/disk/m/404
cd ~/disk/m/404
repo init -u https://github.com/P-404/android_manifest -b shinka 
git clone https://github.com/XenStuff/manifest --depth=1 -b 404 .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync

mv platform/cts cts

# build rom
source build/envsetup.sh
lunch p404_lavender-userdebug
export WITH_GMS=true
export TZ=Asia/Kolkata #put before last build command
make bacon
