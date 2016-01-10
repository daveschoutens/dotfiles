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


## Install .bashrc
#TODO: source our bashrc, ONLY if we haven't already
echo -e "\r\n#DOTFILE INCLUDE\r\nsource ~/dotfiles/.bashrc" >> ~/.bashrc

#Dependency for .bashrc... bash-git-prompt repo
#TODO: Again, 'dotfiles' should be dynmacially determined
git clone https://github.com/magicmonty/bash-git-prompt ~/dotfiles/deps/bash-git-prompt
