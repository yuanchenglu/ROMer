
echo Welcome to bluth autoAPKInstall.sh

echo cd ~/project/ROMer/APKInstall/
cd ~/project/ROMer/APKInstall/

echo ./adbstart.sh
./adbstart.sh

echo chmod 644 systemAPP/*.apk
chmod 644 systemAPP/*.apk

echo adb root
adb root
echo adb remount
adb remount

echo adb push systemAPP/AppStats.apk /system/app/
adb push systemAPP/AppStats.apk /system/app/
echo adb push systemAPP/魔力还原.apk /system/app/
adb push systemAPP/魔力还原.apk /system/app/
echo adb push systemLib/libLeMeng.so /system/lib/
adb push systemLib/libLeMeng.so /system/lib/

echo adb install dataAPP/91桌面.apk
adb install dataAPP/91桌面.apk
echo adb install dataAPP/UCBrowser.apk
adb install dataAPP/UCBrowser.apk
echo adb install dataAPP/aimeituan.apk
adb install dataAPP/aimeituan.apk
echo adb install dataAPP/laiwang.apk
adb install dataAPP/laiwang.apk
echo adb install dataAPP/taobao.apk
adb install dataAPP/taobao.apk
echo adb install dataAPP/ttpod.apk
adb install dataAPP/ttpod.apk
echo adb install dataAPP/好123.apk
adb install dataAPP/好123.apk
echo adb install dataAPP/清理大师.apk
adb install dataAPP/清理大师.apk
echo adb install dataAPP/百度手机助手.apk
adb install dataAPP/百度手机助手.apk
echo adb install dataAPP/百度搜索.apk
adb install dataAPP/百度搜索.apk
echo adb install dataAPP/百度浏览器.apk
adb install dataAPP/百度浏览器.apk
echo adb install dataAPP/阅读星.apk
adb install dataAPP/阅读星.apk

echo adb reboot
adb reboot

