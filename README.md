The contents of this repository are meant to ease the task of configuring a fresh Kali installation.

Command Line Installation
-------------------------------------------------------------------
1. **git clone https://github.com/MatthewClarkMay/kali-setup-scripts.git**
2. **cd kali-setup-scripts/**
3. **./vmware-tools-install.sh**

AFTER REBOOT:

4. **cd kali-setup-scripts/**
5. **./kali-fresh-setup.sh**

After running the setup script, launch vim and run **:PluginInstall** to install the plugins listed in vimrc.

Other Recommendations (If anyone knows how to do any of these programmatically, please contribute)
-------------------------------------------------------------------
1. Add custom shortcuts: **Settings --> Keyboard --> Shortcuts --> Custom Shortcuts --> +**
2. Change power saving settings so screen doesn't go blank after 5 minutes: **Settings --> Power --> Blank Screen**
3. Change theme/icons: **Tweak Tool --> Appearance**
    * My personal favorites are **Albatross** for Window and GTK+ and **Gnome (default)** for Icons
4. Enable/Disable Extensions: **Tweak Tool --> Extensions**
    * Recommend enabling **Native window placement**, **Removable drive menu**, **Window list**, and **Workspaces to dock**
    * Recommend disabling **Dash to dock**
5. Show date and seconds at top: **Tweak Tool --> Top Bar**
6. Enable static workspaces: **Tweak Tool --> Workspaces --> Workspace Creation**
    * I prefer 6
7. Configure OpenVAS: **Openvas initial setup**
