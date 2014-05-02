
APKInstall_dir=~/project/ROMer/APKInstall

chufang_dir=~/soft/ChuFang_cn_0.179
work_dir=$chufang_dir/WORKING_050214_212803
systemApp_dir=$work_dir/system/app
systemVendor_dir=$work_dir/system/vendor/operator/app
systemLib_dir=$work_dir/system/lib
dataApp_dir=$work_dir/data/preinstall_apps


echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo 1.delete old apk
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------

cd $systemApp_dir/
rm AppDisabler.apk
rm Baiduinput.apk
rm cleanmaster.apk

cd $systemVendor_dir/
cp mi-tools_1.9.2.apk ~/tmp/app_rom/
cp WSM_tools_2.2.1.apk ~/tmp/app_rom/
cp ViPER4Android_v2.3.3.0.apk ~/tmp/app_rom/
rm -rf *
cp ~/tmp/app_rom/*.apk .

echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo 2.copy ycl apk
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------

cd $APKInstall_dir/
cp systemAPP/*.apk $systemVendor_dir/
cp systemLib/*.so $systemLib_dir/
cp dataAPP/*.apk $systemVendor_dir/
