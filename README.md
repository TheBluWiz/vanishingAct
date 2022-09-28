# vanishingAct
## Description
This Bash shell script allows you to hide, reveal, encrypt and decrypt volumes in macOS. The hide and reveal commands will work with any mountable volume. The encrypt and decrypt commands will only work with encrypted APFS volumes.

## Potential Other Uses
The diskutil list and following transformations starting at line 22 could be of use in various workflows beyond unlocking disks. It allows a user to quickly and easily get the disk# for any named disk. 

## Personal Use
OpenSource. Do What you want with this.
I personally have been using it when I set up thumb drives to access SSH keys and proxy servers over SSH. It is convienient to have these keys attatched to a machine without brodcasting they are being used, and to quickly be able to encrypt the contents of the flash drive if I step away for a short period. 

## Next Steps
I may explore at a later time creating a version of this to add to $PATH that would accept inputs while invoking the script rather then just opening a new shell, but at this time I don't tend to use this on just one device, and setting it up on a $PATH for each new machine simply isn't desired. 

## Additional
I included a second script variant of VanishingAct which works specifically with a Volume named 'Storage' called Encrypt:Decrypt.sh. It consolidates the hide and encrypt functions into 'hide', and reveal and decrypt funcitons into 'reveal'. While this cariation lacks flexibility it requires less input so works much faster. 

Enjoy!

-theBluWiz

#^_^#