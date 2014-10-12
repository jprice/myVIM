#!/bin/sh

# run: . .vim/install.sh to install environment

#symlinks
ln -sfv ~/.vim/.vimrc ~/.vimrc
ln -sfv ~/.vim/.jshintrc ~/.jshintrc
ln -sfv ~/.vim/.ackrc ~/.ackrc

# install vundle
git clone git://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo 'Done!'
