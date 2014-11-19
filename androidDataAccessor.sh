#!/bin/bash
echo 'Enter the package name of your application'
read packagename
echo 'You entered package name as : '$packagename
./adb backup -noapk $packagename
java -jar abe.jar unpack backup.ab $packagename.tar
rm backup.ab
