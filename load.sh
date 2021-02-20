#!/bin/bash


echo "Installing curl to fetch files."
sudo apt-get install curl

echo "Installing cmake for building plugins."
sudo apt-get install cmake

echo "Install python dependency."
sudo apt-get install -y libpython-all-dev

echo "Downloading nvim to ./bin/nvim-appimage."
nvim_image_link="https://github.com/neovim/neovim/releases/download/v0.4.4/nvim.appimage"
curl -fLo ./bin/nvim-appimage "$nvim_image_link"
echo "Installed neovim image to $(pwd)/bin. Execute from here / create alias."
chmod +x ./bin/nvim-appimage

echo "Downloading plug.vim to ./autoload"
plug_link="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
curl -fLo ./autoload/plug.vim "$plug_link"
echo "Downloaded plug.vim to ./autoload"

echo "Finished downloads."

echo "Installing plugins."
./bin/nvim-appimage +PlugUpdate +qall












