#!/bin/bash

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo mv /etc/vim/vimrc /etc/vim/vimrc-backup
sudo cp vimrc /etc/vim/

echo "-------------------------------------------------------------------"
echo "------------- Vundle and vimrc configured, Next Phase -------------"
echo "-------------------------------------------------------------------"

mkdir ~/.vim/colors
wget https://raw.githubusercontent.com/DrSpatula/vim-buddy/master/colors/buddy.vim
mv buddy.vim ~/.vim/colors

echo "-------------------------------------------------------------------"
echo "------------ vim color scheme configured, Next Phase --------------"
echo "-------------------------------------------------------------------"

sudo mv ~/.bashrc ~/.bashrc-copy
sudo cp .bashrc ~
sudo cp .bash_aliases ~

echo "-------------------------------------------------------------------"
echo "------------ .bashrc copied and replaced, Next Phase --------------"
echo "-------------------------------------------------------------------"

