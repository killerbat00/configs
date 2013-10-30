#!/bin/bash

if [ -z $1 ]; then
    echo "Please specify username..."
    exit 1
else
    user=$1
fi

zsh=$(which zsh)
if [ -z $zsh ]; then
    echo 'no zsh...installing.'
    sudo yum install -y zsh
fi

vim=$(which vim)
if [ -z $vim ]; then
    echo 'no vim...installing.'
    sudo yum install -y vim
fi

echo "Changing shell to zsh..."
chsh -s $zsh $user

echo "Configuring zsh..."
cp -R oh-my-zsh /home/$user/.oh-my-zsh
ln -s /home/$user/.oh-my-zsh/zshrc /home/$user/.zshrc

echo "Configuring vim..."
cp -R vim  /home/$user/.vim
ln -s /home/$user/.vim/vimrc /home/$user/.vimrc

echo "Hey look at that, I'm done."
