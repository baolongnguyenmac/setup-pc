# setup-pc

This repo is used to setup a new Ubuntu/PopOS laptop

## Setup source.list

Open source.list as follows

```
nano /etc/apt/sources.list
```

Add the proper source from `https://apt.pop-os.org/`. I have added `release`

```
add-apt-repository "deb http://apt.pop-os.org/release $(lsb_release -cs) main"
```

## Setup commandline applications

Refer to `cui.sh` for details

Note that `MiniConda` will be install via `conda.sh`, which is called from `cui.sh`. But please modify it before used (ref: https://www.anaconda.com/docs/getting-started/miniconda/install)

After installing `iBus` for Unikey (Vietnamese), the system has to be restarted. Then, add the Vietnamese keyboard from setting

After install Oh-my-zsh and its plugins, you have to add their names into the plugins

```
plugins=(
        git
        zsh-syntax-highlighting
        zsh-autosuggestions
)

```

## Setup GUI applications

Refer to `gui.sh` for details

## Alias setup


