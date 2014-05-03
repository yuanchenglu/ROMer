
rom_old_name=精英IOCEAN_X7_MIUI_4.5.2开发版.zip
rom_new_name=Bluth_精英IOCEAN_X7_MIUI_4.5.2.zip


romer_dir=~/project/ROMer
APKInstall_dir=$romer_dir/APKInstall
chufang_dir=~/soft/ChuFang_cn_0.179

work_dir=$chufang_dir/WORKING_
work_old_dir=$chufang_dir/working_old
orignal_update_dir=$chufang_dir/original_update
tmp_orignal_dir=$orignal_update_dir/tmp

sign_files_dir=$chufang_dir/sign_files
output_zip_bluth_dir=$chufang_dir/OUTPUT_ZIP_Bluth

chufang_scripts_dir=$chufang_dir/scripts
chufang_scripts_bluth_dir=$chufang_dir/scripts/bluth
ROMer_scripts_bluth_dir=$romer_dir/bluth

do_zipalign=$chufang_scripts_dir/do_zipalign
change_rom_name=$chufang_scripts_dir/change_rom_name
do_deodex=$chufang_scripts_dir/do_deodex
sign_files_in_folder_bluth=$chufang_scripts_bluth_dir/sign_files_in_folder
do_zipalign_bluth=$chufang_scripts_bluth_dir/do_zipalign

press_enter=$ROMer_scripts_bluth_dir/press_enter

echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo 全自动制作ROM 
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------

$press_enter

echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo 1.backup $work_dir to $work_old_dir
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
$press_enter
cd $chufang_dir/
rm -r $work_old_dir/
mkdir $work_old_dir/
cd $work_dir/
mv * $work_old_dir/

echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo 2.unzip $rom_old_name to $work_dir
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
$press_enter
cd $orignal_update_dir/
rm -r $tmp_orignal_dir/
mkdir $tmp_orignal_dir/

cd $orignal_update_dir/
mv $rom_old_name $tmp_orignal_dir/
cd $tmp_orignal_dir/
unzip $rom_old_name
mv $rom_old_name $orignal_update_dir/
mv $tmp_orignal_dir/* $work_dir/

echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo 3.DeleteCopyAPK.sh to install bluth apk
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
$press_enter
cd $APKInstall_dir/
./DeleteCopyAPK.sh

echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo 4.do chufang_scripts
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
$press_enter
cd $chufang_scripts_dir/
echo do_zipalign
$do_zipalign_bluth
echo do_deodex
$do_deodex
echo change_rom_name
$change_rom_name


echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo 5.zip $work_dir to $rom_new_name
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
$press_enter
cd $chufang_dir/
zip $rom_new_name $work_dir/


echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
echo 8.sign zip file to $output_zip_bluth_dir/
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
$press_enter
cd $chufang_dir/
mv $rom_new_name $sign_files_dir/
$sign_files_in_folder_bluth
cd $sign_files_dir/
echo mv *.zip $output_zip_bluth_dir/
mv *.zip $output_zip_bluth_dir/

echo ----------------------------------
echo ----------------------------------
echo finished!!!!
echo ----------------------------------
echo ----------------------------------
