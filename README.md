# nvim

## currently installed plugins

<ol>
<li>https://github.com/ycm-core/YouCompleteMe</li>
<li>https://github.com/Chiel92/vim-autoformat</li>
<li>https://github.com/junegunn/fzf</li>
<li>https://github.com/AlxHnr/project-chdir.vim</li>
<li>https://github.com/tpope/vim-fugitive</li>
</ol>

## installation

This project has to be cloned to ~/.config/
<br>
After cloning run the load.sh script:

``./load.sh
``

It will download curl, python dependencies, cmake via apt and neovim and the Plug plugin manager with curl.

In the config/nvim/bin lies the nvim-appimage which is used to start neovim. You can create an alias or something similar for it.
<br>

You can put your own init.vim file in the /custom folder.
<br>
It will always be loaded in addition to the project's root directory init.vim.



