echo "============= Install curl ============="
sudo apt install curl
# echo "========================================"

echo "============= Setup Conda ============="
# install
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh

# activate and init
source ~/miniconda3/bin/activate
conda init --all
# echo "========================================"

echo "============= Setup Zsh ============="
# install zsh and set default shell
sudo apt install zsh
echo "zsh" >> ~/.bashrc

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# plugins for oh-my-zsh
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# after cloning these plugins, you have to add them into ~/.zshrc (in the plugins): `zsh-autosuggestions`, `zsh-syntax-highlighting`
# echo "========================================"

# install uv and setup venv
echo "============= Setup UV ============="
curl -LsSf https://astral.sh/uv/install.sh | sh
# uv venv ~/.nblong --python 3.11
# echo "source ~/.nblong/bin/activate" >> ~/.zshrc
# echo "========================================"

echo "============= Install iBus ============="
sudo add-apt-repository ppa:ubuntu-vn/ppa
sudo apt-get update
sudo apt-get install ibus-unikey
ibus restart
# echo "========================================"

# prevent laptop from sleeping
echo "============= Install caffeine ============="
sudo apt install caffeine
# echo "========================================"

echo "============= Install tree ============="
sudo apt install tree
# echo "========================================"

# # install latex
# sudo apt install texlive-full
