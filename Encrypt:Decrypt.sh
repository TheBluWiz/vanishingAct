#!/bin/bash
echo "Would you like to hide or reveal storage?"
read userinput

if [ "$userinput" == "hide" ] ; then
diskutil unmount /Volumes/Storage
killall Finder

elif [ "$userinput" == "reveal" ] ; then
disk=$(diskutil list)
disk=$(grep "Storage" <<< "$disk")
disk=$(printf '%s\n' "${disk:(-7)}")
echo $disk
diskutil apfs unlockVolume "$disk"

else
echo "Unexpected Input"
fi
