# setup-pc

This repo is used to setup a new Ubuntu/PopOS laptop

## Before doing anything

- Username: nblong
- You should set `sources.list` up when installing Debian (just choose the server that's near you)

## Grant permission for user

- Debian doesn't allow you to `sudo` thing out unless you grant the permission for your user to do so

- In order to do that:

    - In your terminal, type `su -`, then enter root's password so you can be root
    - Type `visudo` to edit `/etc/sudoers`. Edit as follows:

        ```
        # User privilege specification
        root    ALL=(ALL:ALL) ALL
        nblong    ALL=(ALL:ALL) ALL
        ```

    - `Ctrl+O` to save and `Ctrl+X` to exit. Now you can `sudo` thing out

## Online account in Setting

- Login to all Google accounts
- Sync calendar and contacts
- Access to GG Drive from local

## Setup GUI applications

- Download `*.deb` file and install by `sudo dpkg -i <package>.deb`

    - [Chrome](https://www.google.com/intl/vi_vn/chrome/) --> Login to all Google accounts
    - [VSCode](https://code.visualstudio.com/download) --> Login to GitHub
    - [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/): This helps display app indicator (the small icon in taskbar) so we can interact with the app. But I notice that we have to re-enable it every time we turn on the lap. I decide to add these commands to `~/.zshrc`
        ```bash
        gnome-extensions disable appindicatorsupport@rgcjonas.gmail.com
        gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com
        ```
    - [Dropbox](https://www.dropbox.com/install-linux) --> Login to Dropbox account
        - Note that you should only sync `~/Dropbox/Self/bin` for setup
        - After that, you can choose to sync other folders
    - [Microsoft Edge](https://www.microsoft.com/vi-vn/edge/?form=MA13FJ) --> Login to Microsoft and change Search engine to Google

## Setup commandline applications

- Refer to `cui.sh` for details

- After installing `iBus` for Unikey (Vietnamese), the system has to be restarted. Then, add the Vietnamese keyboard from setting

- After install `Oh-my-zsh` and its plugins, you don't have to add these plugins into `.zshrc` since you will link `.zshrc` from Dropbox to home directory

- Install `ninja-build` to build stuff for `sway` (e.g., bar, launcher,...)

- Install `tlp` for improve battery lifetime. Verify by `tlp-stat -s`

<!-- - Install `snap`, then use `snap` to install `typst`, a compiler for pandoc to produce pdf from markdown file
- After installing `snap`, verify by:

    ```bash
    # chech if snap was installed successfully
    sudo snap install hello-world
    hello-world
    ```

- Install `pandoc` for converting from `*.md` to `*.pdf`

- Install `princexml` for converting from `*.md` to `*.pdf`:
    - Download a deb file from: `https://www.princexml.com/download/`
    - Then install it -->

### Sway

- Refer to `~/Dropbox/Self/bin/note.md` for detail

## Setup Shell and SSH

- Refer to `~/Dropbox/Self/bin/note.md` for detail

## Setup email (Thunderbird)

- If you have an iCloud email, go to `https://account.apple.com/account/manage` and create an `App-Specific Passwords`. Then, use the password for login in ThunderBird

- You may also want to fwd all emails from other accounts to this account so you don't have to check email for all accounts

- Thunderbird archives emails by year. But in case that you choose to compact the `Archives` folder, all the folders will be gone (they're still there online, but gone in local). In such case, if you want to get these folder back, e.g., folder 2018, you have to move (on cloud) an email from 2018 to `Inbox`. Then, you archive this email in ThunderBird. Keep doing so for all the years.
