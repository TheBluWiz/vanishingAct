#!/bin/bash
Echo "Would you like to hide, reveal, encrypt or decrypt a volume?"
read userinput

if [ "$userinput" == "hide" ] ; then
echo "Which volume would you like to hide?"
read volume
sudo setFile -a V /Volumes/"$volume"
killall Finder

elif [ "$userinput" == "reveal" ] ; then
echo "Which volume would you like to reveal?"
read volume
sudo setFile -a v /Volumes/"$volume"


## This disk=$ section is pretty fun. It takes user input to discover the disk and volume number.

elif [ "$userinput" == "encrypt" ] ; then
echo "Which volume would you like to encrypt?"
read volume
disk=$(diskutil list)
disk=$(grep "$volume" <<< "$disk")
disk=$(printf '%s\n' "${disk:(-7)}")
diskutil apfs lockVolume "$disk"

elif [ "$userinput" == "decrypt" ] ; then
echo "Which volume would you like to decrypt?"
read volume
disk=$(diskutil list)
disk=$(grep "$volume" <<< "$disk")
disk=$(printf '%s\n' "${disk:(-7)}")
diskutil apfs unlockVolume "$disk"

## The disk and volume numbers are parsed as disk?s?. The Disk? being a container/partition and that last digit
## as the volume number.

else
echo "Unexpected Input"
echo "Closing Terminal"

fi
