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

Other Recommendations (If you know how to do any of these programmatically, please contribute)
-------------------------------------------------------------------
1. Install all Kali tools: **apt-get install kali-linux-all** (This is not included in kali-fresh-setup.sh because the install is 2GB, and some people may not be interested in all of the tools.
2. Add custom shortcuts: **Settings --> Keyboard --> Shortcuts --> Custom Shortcuts --> +**
3. Change power saving settings so screen doesn't go blank after 5 minutes: **Settings --> Power --> Blank Screen**
4. Change theme/icons: **Tweak Tool --> Appearance**
    * My personal favorites are **Albatross** for Window and GTK+ and **Gnome (default)** for Icons
5. Enable/Disable Extensions: **Tweak Tool --> Extensions**
    * Recommend enabling **Native window placement**, **Removable drive menu**, **Window list**, and **Workspaces to dock**
    * Recommend disabling **Dash to dock**
6. Show date and seconds at top: **Tweak Tool --> Top Bar**
7. Enable static workspaces: **Tweak Tool --> Workspaces --> Workspace Creation**
    * I prefer 6
8. Configure OpenVAS: **Openvas initial setup**
