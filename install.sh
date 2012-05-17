#!/usr/bin/sh

# run: . .vim/install.sh to install environment

echo 'export NODE_PATH=$HOME/.vim/bundle/js-beautify:$NODE_PATH' >> ~/.profile
export NODE_PATH=$HOME/.vim/bundle/js-beautify:$NODE_PATH

#symlinks
ln -sfv ~/.vim/.vimrc ~/.vimrc
ln -sfv ~/.vim/.jslintrc ~/.jslintrc

# install vundle
git clone git://github.com/gmarik/vundle.git .vim/bundle/vundle
