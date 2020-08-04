#!/bin/bash

# environments
cat >> ~/.bashrc << EOF
alias gr='grep -Hirn'
alias grw='grep -Hirnw'

source ~/.git-completion.bash
EOF

# packages
install_deps=(
	bash-completion
	cmake
	git
	htop
	net-tools
	clang
	clang-format
	tree
	vim
	ctags
	cscope
)
sudo apt update
sudo apt install ${install_deps[*]}

# install configuration files
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
cp gitconfig ~/.gitconfig
cp git-completion.bash ~/.git-completion.bash
sudo chmod 775 mkcscope && cp mkcscope /usr/local/bin
if [ ! -d "~/.vim/plugin" ]; then
  mkdir ~/.vim/plugin
fi
cp cscope_maps.vim ~/.vim/plugin

# install vim plugins
if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim -c PluginInstall -c q -c q

source ~/.bashrc
