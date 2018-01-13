#!/bin/sh

sudo yum -y install curl-devel expat-devel gettzxt-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker
sudo yum -y remove git
wget https://www.kernel.org/pub/software/scm/git/git-2.5.3.tar.gz
./configure
make -j10
sudo make install
