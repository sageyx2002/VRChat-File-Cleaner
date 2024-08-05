# VRChat File Cleaner
Did you ever reinstall VRChat just to find out you were still logged in, and your settings have not been reset?
Turns out VRChat stores a bunch of data on your machine that is not removed. You can utilize this script to remove all data associated with VRChat for a fresh install.


### Directories
- `%temp%\VRChat`
- `%UserProfile%\AppData\LocalLow\VRChat\VRChat`

Assuming your Installation is on the `C:\` drive and your username is `User` the full paths would resolve to
- `C:\Users\User\AppData\Local\Temp\VRChat`
  - This folder contains crash reports and analytics created by VRChat.
- `C:\Users\User\AppData\LocalLow\VRChat`
  - This folder contains logs, configs, caches, OSC settings and more.
  - **Note:** If you have used the [ToN Save Manager](https://github.com/ChrisFeline/ToNSaveManager) before, this script will only remove the `\VRChat\VRChat` folder as the Save Manager saves its data within `\VRChat\ToNSaveManager\`

### Registry Directory
- `HKEY_CURRENT_USER\SOFTWARE\VRChat`
  - This Directory includes all Settings and Tokens of your account, once removed, you will have to sign in again and restore your settings. This can be useful should you encounter repeated login errors that are not resolved with a reboot.
