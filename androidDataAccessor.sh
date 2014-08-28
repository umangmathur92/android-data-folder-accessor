current_dir=$(pwd)
echo 'Enter the absolute path to adb Directory(platform-tools folder)'
read path
echo 'Enter the package name of your application'
read packagename
echo 'Enter the absolute destination path'
read destination
echo 'You entered path as : '$path
echo 'You entered package name as : '$packagename
echo 'The zip file will be saved at : '$destination
cd $path
./adb backup -noapk $packagename
cd $path
dd if=backup.ab bs=24 skip=1|openssl zlib -d > $packagename.zip
rm backup.ab
cp $packagename.zip $destination
rm $packagename.zip