# setup-pc

This repo is used to setup a new Ubuntu/PopOS laptop

## Setup source.list

Open source.list as follows

```bash
nano /etc/apt/sources.list
```

Add the proper source from `https://apt.pop-os.org/`. I have added `release`

```bash
add-apt-repository "deb http://apt.pop-os.org/release $(lsb_release -cs) main"
```

## Setup commandline applications

Refer to `cui.sh` for details

Note that `MiniConda` will be install via `conda.sh`, which is called from `cui.sh`. But please modify it before used (ref: https://www.anaconda.com/docs/getting-started/miniconda/install)

After installing `iBus` for Unikey (Vietnamese), the system has to be restarted. Then, add the Vietnamese keyboard from setting

After install Oh-my-zsh and its plugins, you have to add their names into the plugins

```bash
plugins=(
        git
        zsh-syntax-highlighting
        zsh-autosuggestions
)

```

## Setup GUI applications

Refer to `gui.sh` for details

## Download DropBox

Download [Dropbox](https://www.dropbox.com/install-linux) and setup the account (this is pre-required before we move to the next step)

## Setup Alias

Source the file `~/Dropbox/01backup/bin/bash_alias_private`

```bash
echo "source ~/Dropbox/01backup/bin/bash_alias_private" >> ~/.zshrc
```

## Setup Latex

it should be included in `cui.sh`

## Setup email (Thunderbird)

If you have an iCloud email, go to `https://account.apple.com/account/manage` and create an `App-Specific Passwords`. Then, use the password for login in ThunderBird

You may also want to fwd all emails from other accounts to this account so you don't have to check email for all accounts

Thunderbird archives emails by year. But in case that you choose to compact the `Archives` folder, all the folders will be gone (they're still there online, but gone in local). In such case, if you want to get these folder back, e.g., folder 2018, you have to move (on cloud) an email from 2018 to `Inbox`. Then, you archive this email in ThunderBird. Keep doing so for all the years.

## Setup virtual environment

I use 2 venv managers: `uv` and `conda`. Using `uv` is because of its speed. Using `conda` dues to its global ability

- Create a venv and source it every time a terminal starts

    - Create the venv

        ```bash
        cd ~
        uv venv --python 3.11
        ```

    - Source it:

        ```bash
        echo "source ~/.venv/bin/activate" >> ~/.zshrc
        ```

- Activate `base` environment of `conda`:

    ```bash
    source ~/miniconda3/bin/activate
    ```

## Install Microsoft Edge for editing PDF

Download the installer from [Microsoft](https://www.microsoft.com/en-us/edge/download?form=MA13FJ)

Then `sudo dpkg -i <package>.deb`
