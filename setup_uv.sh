curl -LsSf https://astral.sh/uv/install.sh | sh
cd ~
uv venv --python 3.11
echo "source ~/.venv/bin/activate" >> ~/.zshrc
