# setup-pc

This repo is used to setup a new Ubuntu/PopOS laptop

## Setup source.list

- You should have already set this up when installing Debian (just choose the server that's near you)

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

## Google account

- Login to all Google accounts
- Sync calendar and contacts
- Access to GG Drive from local

## Setup GUI applications

- Download `*.deb` file and install by `sudo dpkg -i <package>.deb`

    - [Chrome](https://www.google.com/intl/vi_vn/chrome/) --> Login to all Google account
    - [VSCode](https://code.visualstudio.com/download) --> Login to GitHub
    - [Dropbox](https://www.dropbox.com/install-linux) --> Login to Dropbox account
    - [Tray icons plugin](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/): This helps display Dropbox icon so we can interact with the app
    - [Microsoft Edge](https://www.microsoft.com/vi-vn/edge/?form=MA13FJ) --> Login to Microsoft

## Setup commandline applications

- Refer to `cui.sh` for details

- After installing `iBus` for Unikey (Vietnamese), the system has to be restarted. Then, add the Vietnamese keyboard from setting

- After install `Oh-my-zsh` and its plugins, you have to add their names into the plugins

    ```bash
    plugins=(
            git
            zsh-syntax-highlighting
            zsh-autosuggestions
    )

    ```

## Setup `venv`, `.ssh` and alias

- Setup `venv`: I use 2 venv managers: `uv` and `conda`. Using `uv` is because of its speed. Using `conda` dues to its global ability

    - Create a `venv` and source it every time a terminal starts

        ```bash
        uv venv ~/.nblong --python 3.11
        echo "source ~/.nblong/bin/activate" >> ~/.zshrc
        ```

    - Activate `base` environment of `conda`:

        ```bash
        source ~/miniconda3/bin/activate
        ```

- Setup `.ssh`

    ```bash
    ln -s ~/Dropbox/01backup/Self/bin/ssh ~/.ssh
    chmod 600 ~/.ssh/id_rsa
    ```

- Source the file `bash_alias_private`

    ```bash
    echo "source ~/Dropbox/01backup/Self/bin/bash_alias_private" >> ~/.zshrc
    ```

## Setup email (Thunderbird)

- If you have an iCloud email, go to `https://account.apple.com/account/manage` and create an `App-Specific Passwords`. Then, use the password for login in ThunderBird

- You may also want to fwd all emails from other accounts to this account so you don't have to check email for all accounts

- Thunderbird archives emails by year. But in case that you choose to compact the `Archives` folder, all the folders will be gone (they're still there online, but gone in local). In such case, if you want to get these folder back, e.g., folder 2018, you have to move (on cloud) an email from 2018 to `Inbox`. Then, you archive this email in ThunderBird. Keep doing so for all the years.
