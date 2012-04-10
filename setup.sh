#! /bin/bash

cd ~

for i in `find .dotfiles -name "*" ! -name ".git" ! -name setup.sh -depth 1`
do
    ln -s $i
done
