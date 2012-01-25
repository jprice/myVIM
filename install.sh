#!/usr/bin/sh

# run: . .vim/install.sh to install environment

echo 'export NODE_PATH=$HOME/.vim/bundle/js-beautify:$NODE_PATH' >> ~/.profile
export NODE_PATH=$HOME/.vim/bundle/js-beautify:$NODE_PATH

# create environment directories
mkdir -pv ~/.vim/swp
mkdir -pv ~/.vim/backups

#symlinks
ln -sfv ~/.vim/.vimrc ~/.vimrc
ln -sfv ~/.vim/.jslintrc ~/.jslintrc
