#!/bin/bash
set -e

apt_fast_installation() {
  if ! type aria2c >/dev/null 2>&1; then
  	pkg install -y aria2
  fi

  wget https://raw.githubusercontent.com/NDRAEY/apt-fast4termux/master/apt-fast -O $PREFIX/bin/apt-fast
  chmod +x $PREFIX/bin/apt-fast
  if ! [[ -f $PREFIX/etc/apt-fast.conf ]]; then
    wget https://raw.githubusercontent.com/NDRAEY/apt-fast4termux/master/apt-fast.conf -O $PREFIX/etc/apt-fast.conf
  fi
}

apt_fast_installation
