#!/bin/sh

MY_PATH=`dirname $0`

pkg install -y ccache xorg font-adobe-100dpi gmake git-lite curlpp autoconf
cp ${MY_PATH}/.cshrc ~devel/.cshrc
chown devel:devel ~devel/.cshrc

if [ ! -d /usr/src/fisean ]; then
  git clone https://github.com/fisean/fisean /usr/src/fisean
  chown -R devel:devel /usr/src/fisean
fi

if [ ! -d /usr/src/gnui ]; then
  git clone https://github.com/fisean/gnui /usr/src/gnui
  chown -R devel:devel /usr/src/gnui
fi
