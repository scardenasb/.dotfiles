#! /usr/bin/env python

import os
from os.path import expanduser, exists


# NOTE: Sequence to auto install latest stable neovim version
# TODO: Make a script to detect the correct distro (this works for debian based)
os.system('sudo apt update')
os.system('sudo apt-get update')   # NOTE: Optional
os.system('sudo apt install curl')   # NOTE: curl vimplug doesn't seem to work with snap pkm curl's version
os.system('sudo apt install npm -y')
os.system('sudo apt install pip -y')
os.system('sudo apt install grep')
os.system('python3 -m pip install pynvim')
os.system('curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage')
os.system('chmod u+x nvim.appimage')
os.system('./nvim.appimage --appimage-extract')
os.system('./squashfs-root/AppRun --version')
os.system('sudo mv squashfs-root /')
os.system('sudo ln -s /squashfs-root/AppRun /usr/bin/nvim')
os.system('rm -rf nvim.appimage')
os.system('mkdir ./fonts/')


# TODO: Check font path, doesn't work in some ubuntu/debian based distros like lubuntu.
# To download the best programming fonts.
# No ligatures 👇
# Regular
os.system('wget -cO - https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/NoLigatures/Regular/complete/JetBrains%20Mono%20NL%20Regular%20Nerd%20Font%20Complete%20Mono.ttf > ./fonts/RegularJetMonoNL.ttf')
# Bold
os.system('wget -cO - https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/NoLigatures/Bold/complete/JetBrains%20Mono%20NL%20Bold%20Nerd%20Font%20Complete%20Mono.ttf > ./fonts/BoldJetMonoNL.ttf')

# Ligatures 👇
# # Regular
# os.system('wget -cO - https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf > ./fonts/RegularJetMonoL.ttf')
# # Bold
# os.system('wget -cO - https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Bold/complete/JetBrains%20Mono%20Bold%20Nerd%20Font%20Complete%20Mono.ttf > ./fonts/BoldJetMonoL.ttf')

# Linux 
os.system('curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')


# NOTE: C compiler to run TreeSitter
os.system('sudo apt install build-essential')   # NOTE: build-essential is to install cc1 dependency too (see Readme)


# NOTE: Scripts to make symlinks of main dotfiles and neovim config
home_files = ['.bashrc', '.tmux.conf']
dir_path = os.getcwd()
home = expanduser("~")


# To move fonts to system and refresh fonts cache
if not exists('~/.local/share/fonts'):
    os.system('mkdir ~/.local/share/fonts')
    os.system('mv ./fonts/*.ttf ~/.local/share/fonts')
    os.system('fc-cache -f -v')
else:
    os.system('mv ./fonts/*.ttf ~/.local/share/fonts')
    os.system('fc-cache -f -v')


def symbolik():

    # To make symlinks that belong to home path
    for file in home_files:
        if exists(f'{home}/{file}'):
            os.remove(f'{home}/{file}')
            os.symlink(f'{dir_path}/{file}', f'{home}/{file}')
        else:
            os.symlink(f'{dir_path}/{file}', f'{home}/{file}')

        print(f'\n{file} symbolic link created correctly in {home}/{file}\n----------------------------------------\n')


    # To make nvim full config symlink
    if exists(f'{home}/.config/nvim'):
        os.remove(f'{home}/.config/nvim')
        os.symlink(f'{dir_path}/nvim', f'{home}/.config/nvim')
        print(f'\nNvim symbolic link created correctly in {home}/.config/nvim\n----------------------------------------')
    else:
        os.symlink(f'{dir_path}/nvim', f'{home}/.config/nvim')
        print(f'\nnvim symbolic link created correctly in {home}/.config/nvim\n----------------------------------------')


if __name__ == "__main__":
    symbolik()
