
rom_old_name=精英IOCEAN_X7_MIUI_4.5.2开发版.zip
rom_new_name=Bluth_精英IOCEAN_X7_MIUI_4.5.2.zip


APKInstall_dir=~/project/ROMer/APKInstall
chufang_dir=~/soft/ChuFang_cn_0.179

work_dir=$chufang_dir/WORKING_
work_old_dir=$chufang_dir/WORKING_OLD
orignal_update_dir=$chufang_dir/original_update
tmp_orignal_dir=$orignal_update_dir/tmp

sign_files_dir=$chufang_dir/sign_files
signed_update_zip_bluth_dir=$chufang_dir/signed_update_zip_bluth

chufang_scripts_dir=$chufang_dir/scripts
zipalign=$chufang_scripts_dir/do_zipalign
change_rom_name=$chufang_scripts_dir/change_rom_name
deodex=$chufang_scripts_dir/do_deodex
sign_files_in_folder_bluth=$chufang_scripts_dir/sign_files_in_folder_bluth

cd $chufang_dir/
rm -r $work_old_dir/
mkdir $work_old_dir/
cd $work_dir/
mv * $work_old_dir/

cd $orignal_update_dir/
rm -r $tmp_orignal_dir/
mkdir $tmp_orignal_dir/


cd $orignal_update_dir/
mv $rom_old_name $tmp_orignal_dir/
cd $tmp_orignal_dir/
unzip $rom_old_name
mv $rom_old_name $orignal_update_dir/
mv $tmp_orignal_dir/* $work_dir/

cd $APKInstall_dir/
./DeleteCopyAPK.sh

cd $chufang_scripts_dir/
$do_zipalign
$change_rom_name


cd $chufang_dir/
zip $rom_new_name $work_dir/


cd $chufang_dir/
cp $rom_new_name $sign_files_dir/
$sign_files_in_folder_bluth
cd $sign_files_dir/
mv *.zip $signed_update_zip_bluth_dir/
