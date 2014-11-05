Smackbook for OS X Yosemite
==================

https://www.youtube.com/watch?v=4iyeqh9zHf8

#### NOTE: This script will not work with any Macbooks shipped with SSDs. This includes the Retina Macbook Pro and recent Macbook Air models.

To check for compatibility, go here: http://support.apple.com/en-us/HT1935


This is an updated version of Erling Ellingsen's Smackbook script originally written in 2006.

This script uses the Sudden Motion Sensor (SMS) found in some of the older Macbook models to detect the movement of the machine when light pressure is applied to either side of the screen. Since the SMS is, in reality, a triaxial accelerometer, many apps can read the data from it to give the Macbook a degree of awareness of its movement. Think of how a phone or tablet is used in this respect. The Macbook's SMS can be used in similar ways. This script is a rough demonstration of these capabilities.

Wikipedia entry on the SMS:
http://en.wikipedia.org/wiki/Sudden_Motion_Sensor

Article from the author of AMSTracker:
http://osxbook.com/book/bonus/chapter10/ams2hid

I found this online after being virtually untouched for roughly eight years. (To put this in perspective, I was in the 7th grade when this script was initially released. As of this writing, I am a senior in college.) All it took was changing a few lines to update it to work for OS X Yosemite.

USAGE
---------------

To use this script:

* Download AMSTracker from here: http://www.osxbook.com/software/sms/amstracker/
* Extract the AMSTracker program from the .dmg and place it in the same folder as the script
* Open up Terminal and run
        ```
        perl smack.pl
        ```
* ???
* Profit

Licensed under GNU 2.0 due to inheritance from previous developers
