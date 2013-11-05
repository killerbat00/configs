#!/bin/bash

SCRIPT_DIR=`dirname "$(cd ${0%/*} && echo $PWD/${0##*/})"`

if [ -z $1 ]; then
    echo "Please specify username..."
    exit 1
else
    user=$1
fi
echo 'checking if zsh is installed...'
zsh=$(which zsh)
if [ -z $zsh ]; then
    echo 'no zsh...installing.'
    sudo yum install -y zsh
fi

echo 'checking to see if vim is installed...'
vim=$(which vim)
if [ -z $vim ]; then
    echo 'no vim...installing.'
    sudo yum install -y vim
fi

echo "Changing shell to zsh..."
sudo chsh -s $zsh $user

echo "Configuring zsh..."
cp -R oh-my-zsh /home/$user/.oh-my-zsh
ln -s /home/$user/.oh-my-zsh/zshrc /home/$user/.zshrc

echo "Configuring vim..."
cp -R vim  /home/$user/.vim
ln -s /home/$user/.vim/vimrc /home/$user/.vimrc

echo "Configuring .xinitrc..."
cp xinitrc /home/$user/.xinitrc
cp Xresources /home/$user/.Xresources

echo "Installing dwm..."
sudo apt-get install dwm suckless-tools

echo "Configuring dwm..."
sudo apt-get source dwm
cp $SCRIPT_DIR/config.h dwm-*/

echo "Hey look at that, I'm done."
