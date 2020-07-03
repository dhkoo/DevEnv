#!/bin/sh

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
mkdir ~/.vim/plugin
cp cscope_maps.vim ~/.vim/plugin

# install vim plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c PluginInstall -c q -c q

source ~/.bashrc
