#! /usr/bin/env python

import os
from os.path import expanduser


home_files = ['.bashrc', '.tmux.conf', '.gitconfig']
dir_path = os.getcwd()
home = expanduser("~")


def symbolik():

    for file in home_files:
        os.symlink(f'{dir_path}/{file}', f'{home}/{file}')
        print(f'{file} symbolic link created correctly in {home}/{file}\n------------------------------------------------------------\n')

    os.symlink(f'{dir_path}/nvim', f'{home}/.config/nvim')


if __name__ == "__main__":
    symbolik()
