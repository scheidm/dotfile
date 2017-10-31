#!/bin/bash
apt-get --version &&apt-get install tmux git -y
yum --version &&yum install tmux git -y
git clone https://github.com/gmarik/Vundle.vim.git /home/mscheid/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
git clone https://github.com/scheidm/dotfile.git /home/mscheid/dotfile 
ln -s /home/mscheid/dotfile/.* /home/mscheid
cp /home/mscheid/dotfile/.tmuxinator/ /home/mscheid -rf
