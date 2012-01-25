#!/usr/bin/sh
echo 'export NODE_PATH=$HOME/.vim/bundle/js-beautify:$NODE_PATH' >> ~/.profile

#FIXME: doesn't affect immediately.
source ~/.profile

# create environment directories
mkdir -p ~/.vim/swp
mkdir -p ~/.vim/backups

#symlinks
ln -sf ~/.vim/.vimrc .vimrc
ln -sf ~/.vim/.jslintrc .jslintrc
