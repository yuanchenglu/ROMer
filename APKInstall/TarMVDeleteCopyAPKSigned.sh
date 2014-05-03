
APKInstall_dir=~/project/ROMer/APKInstall
chufang_dir=~/soft/ChuFang_cn_0.179

signed_dir=$chufang_dir/sign_files
rom_old_name=精英IOCEAN_X7_MIUI_4.5.2开发版.zip
rom_new_name=Bluth_精英IOCEAN_X7_MIUI_4.5.2.zip


work_dir=$chufang_dir/WORKING_
work_old_dir=$chufang_dir/WORKING_OLD
orignal_update_dir=$chufang_dir/original_update
tmp_orignal_dir=$orignal_update_dir/tmp

chufang_scripts_dir=$chufang_dir/scripts
zipalign=$chufang_scripts_dir/do_zipalign
change_rom_name=$chufang_scripts_dir/change_rom_name
deodex=$chufang_scripts_dir/do_deodex
signed_files=$chufang_scripts_dir/signed_files

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


./$do_zipalign
./$change_rom_name


cd $chufang_dir/
zip $rom_new_name work_dir


cp $rom_new_name $signed_dir/
./$signed_files

