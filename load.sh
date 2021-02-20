#!/bin/bash

# check curl installed
curl_installed=$(whereis curl)

if [ "$curl_installed" == "curl:" ]; then
    while true
    do
        printf "Curl is not installed.\nWould you like to install curl? (apt) (y-n): "

        read user_install_curl
        user_install_curl=$(echo "$user_install_curl" | awk '{print tolower($0)}')

        if [ "$user_install_curl" == "y" ]; then
            echo "After installation, please rerun this script."
            sudo apt-get install curl
            exit 0
        fi

        if [ "$user_install_curl" == "n" ]; then
            echo "Exiting."
            exit 0
        fi
    done

    exit 0
fi

echo "Found curl. $curl_installed"
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

echo "Finished downloads. Please run neovim image and :PlugInstall."












