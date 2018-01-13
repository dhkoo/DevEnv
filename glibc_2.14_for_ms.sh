#!/bin/sh

wget http://ftp.gnu.org/gnu/glibc/glibc-2.14.tar.xz
tar xvJf glibc-2.14.tar.xz
cd glibc-2.14
mkdir build
cd build/
../configure --prefix=/opt/glibc-2.14
make -j10
sudo make install

echo "Don't set the glibc-2.14 lib in bash_profile.."
echo "when I set path, It occurs error regarding to locale.."
