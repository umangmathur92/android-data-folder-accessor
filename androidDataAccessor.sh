#!/bin/bash
echo 'Enter the name of your application'
read appname
echo '==========================================================='
./adb shell pm list packages -e $appname
echo '==========================================================='
echo 'A list of package names matching your application name are listed above. Determine which one belongs to your application.'
echo 'Enter the package name of your application'
read packagename
echo 'You entered package name as : '$packagename
./adb backup -noapk $packagename
java -jar abe.jar unpack backup.ab $packagename.tar
rm backup.ab
echo 'All the application data has been extracted to a .tar archive. Please ensure that you have appropriate software instaled on your machine to extract the same'
