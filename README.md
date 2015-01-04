Android Data Folder Accessor
============================

A simple BASH Script to access the contents of /data/data folder of any android application.  
With this script, you can access the internal database of any android appliction. It essentially consists of a few basic adb commands which will allow you to copy the internal storage data from your android device to your PC and view its contents.  
Useful for android developers.

**How to use :**
- Download Zip of this repository and extract it. (Zip file of approx. 4.4 Mb)
- Double click on androidDataAcessor.sh to run it.
- You will be prompted to enter the name of your application
- The script then searches your android device for all application packages with similar names.
- You will now be shown a list of package names. Determine which one belongs to the application whose data you are interested in accessing.
- Type in this package name.
- You will now be prompted to unlock your phone and press the "Backup Data" button. Do not set any password for the data backup.
- Once the backup operation is complete, all your application data will be available on your PC in a ".tar" archive. Extract it to view the contents and databases.

**Note for windows users :** You need to edit "androidDataAccessor.sh" before running it. Remove all instances of "./adb" with "adb".

**Requirements :** Java should be pre-installed on your machine.

**Software Credits :**  
The development of this software was made possible using the following components:

- *Android Backup Extractor* by *dragomerlin*   
Licensed Under: *Apache License V2.0*  
Link to the original project : [Android Backup Extractor](http://sourceforge.net/projects/adbextractor/).  
abe.jar extracts .ab (android backup file) into a .tar archive



<a href="https://flattr.com/submit/auto?user_id=umangmathur&url=https%3A%2F%2Fgithub.com%2Fumangmathur92%2Fandroid-data-folder-accessor" target="_blank"><img src="//api.flattr.com/button/flattr-badge-large.png" alt="Flattr this" title="Flattr this" border="0"></a>
