#!/bin/bash

## Install .vimrc
#Don't do this until we can verify the .vimrc is/isn't ours.  Should use version info in the file itself
#pushd ~
#mv .vimrc .vimrc.backup
# Should use dynamically determined dirname...
#ln -s dotfiles/.vimrc
#popd

# Install Vundle package
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Use Vundle to install all other plugins
vim +PluginInstall +qall

