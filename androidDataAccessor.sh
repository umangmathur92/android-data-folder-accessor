#!/bin/bash
echo 'Ensure that you have Python Zlib Library installed before continuing'
echo 'Enter the absolute path to adb Directory(platform-tools folder)'
read path
echo 'Enter the package name of your application'
read packagename
echo 'Enter the absolute destination path'
read destination
echo 'You entered path as : '$path
echo 'You entered package name as : '$packagename
echo 'The .tar archive file will be saved at : '$destination
cd $path
./adb backup -noapk $packagename
cd $path
cat backup.ab | (dd bs=24 count=0 skip=1; cat) | zlib-flate -uncompress > $packagename.tar
rm backup.ab
cp $packagename.tar $destination
rm $packagename.tar
