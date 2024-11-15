# VRChat File Cleaner
Did you ever reinstall VRChat just to find out you were still logged in, and your settings have not been reset?
Turns out VRChat stores a bunch of data on your machine that is not removed. You can utilize this script to remove all data associated with VRChat for a fresh install. This script will remove all directories listed in the official [VRChat Documentation](https://docs.vrchat.com/docs/local-vrchat-storage) as shown below:

### File Directories
- `%temp%\VRChat`
- `%UserProfile%\AppData\LocalLow\VRChat`

Assuming your Installation is on the `C:\` drive and your username is `User` the full paths would resolve to
- `C:\Users\User\AppData\Local\Temp\VRChat`
  - This folder contains crash reports and analytics created by VRChat.
- `C:\Users\User\AppData\LocalLow\VRChat`
  - This folder contains logs, configs, caches, OSC settings and more.

### Registry Directory
- `HKEY_CURRENT_USER\SOFTWARE\VRChat`
  - This Directory includes all Settings and Tokens of your account, once removed, you will have to sign in again and restore your settings. This can be useful should you encounter repeated login errors that are not resolved with a reboot.

This script was tested both on Windows 10 and Windows 11 as of August 2024, and should remain in working condition for a while. This repository will receive updates when needed.
Feel free to open an issue if you want to report bugs or fork and send a pull request if you want to contribute.

# How to use
- Download the `run.bat` file from the [latest release](https://github.com/sageyx2002/VRChat-File-Cleaner/releases) and add it to a directory
- Right click the file and select the "Run as administrator" option
  - Note: The script needs administrative permission to delete the registry folder
- Wait for the script to finish executing, check the logs on screen if everything was deleted properly
- Close the console window or file a bug report should you encounter any

**[Virustotal Link](https://www.virustotal.com/gui/file/a01536c7b9c03fc65e01ccb9c08461dc58f822ff7ab75cdbb72958b881b3f0ce)**

**MD5 Checksum:** `3b51b8770e220827e93e542e47794faa`\
**SHA-256 Checksum:** `a01536c7b9c03fc65e01ccb9c08461dc58f822ff7ab75cdbb72958b881b3f0ce`
