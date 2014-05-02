
echo Welcome to bluth autoAPKInstall.sh

cd /mnt/sdcard/0y/ROMer/APKInstall/

echo chmod 644 systemAPP/*.apk
chmod 644 systemAPP/*.apk

sudo cp systemAPP/*.apk /system/app/
sudo cp systemLib/*.so /system/lib/

sudo cp dataAPP/*.apk /data/app/
