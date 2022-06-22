#### Table of contents

* [Installation](#installation)
* [Mars theme](#mars-theme)
* [Nvim folder](#nvim-folder)
* [Tmux and Bash](#tmux-and-bash)
* [Disclaimer](#disclaimer)

<br></br>

> ### Installation
>
> The file `installer.py` is a  [Python3.10](https://python.org) script that will install every required dependency to work with this Nvim repository, including: curl, npm, pip, pynvim; c compiler and cc1 dependency are included in `os.system('sudo apt install build-essential')` because [treesitter's](https://github.com/nvim-treesitter/nvim-treesitter) "ensure installed" will prompt an error if gcc is installed directly; fixed [fonts](https://github.com/ryanoasis/nerd-fonts), and [vimplug](https://github.com/junegunn/vim-plug).
> This file includes scripts to auto create every symbolic link, install the downloaded fonts, and let nvim globally.

<br></br>

> ### Mars theme
>
> It is just a theme for the [Lualine.lua](https://github.com/nvim-lualine/lualine.nvim) plugin. It can be modified with custom colors. The symbolic link has to be made after `:PlugInstall` in neovim, so it will create all the needed folders. Then just use:
> ```sh
> ln -s "$(pwd)/mars.lua" ~/.config/nvim/plugged/lualine.nvim/lua/lualine/themes/mars.lua
> ```
<br></br>

> ### Nvim folder
>
> It contains all the plugin configs that I have in my nvim environment and looks like the screenshots below. My workspace includes Telescope(fuzzy finder) with grep tool:
> 
> ![image](https://user-images.githubusercontent.com/84429399/174917063-b67c65e2-877a-4612-b762-04cce9b40f75.png)
> ![image](https://user-images.githubusercontent.com/84429399/174917116-42aac137-ba7b-445b-99b3-fff5c45c5979.png)

<br></br>

> ### Tmux and Bash
>
> `.tmux.conf` and `.bashrc` include my personal custom environment, with shortcuts and visual adaptation. For.bashrc, there are aliases and `set -o vim` to use it in the command line. 
>
> ![image](https://user-images.githubusercontent.com/84429399/174918289-343eef1e-4f8b-4871-84e4-02dd891a08a7.png)

<br></br>

> ### Disclaimer
>
> Installer.py has worked flawlessly in [wsl2](https://github.com/microsoft/WSL2-Linux-Kernel) with [windows terminal](https://github.com/microsoft/terminal) and in Native [Ubuntu LTS 22.04](https://ubuntu.com/download/desktop).
> There are two PS1 lines at the end of.bashrc. In native Debian distros, the second could be used instead, because depending on the terminal, there could be some problems with ANSI escape sequences.



