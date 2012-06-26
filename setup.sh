#! /bin/bash

cd ~

for i in `find .dotfiles -name "*" ! -name ".git" ! -name setup.sh ! -name ".dotfiles" -maxdepth 1`
do
    ln -s $i
done
