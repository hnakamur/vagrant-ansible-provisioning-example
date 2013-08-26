#!/bin/bash

install_git() {
  if ! rpm -q git; then
    yum install -y git
  fi
}

install_ansible() {
  if [ ! -f /usr/bin/ansible ]; then
    cd /usr/local/src
    git clone https://github.com/ansible/ansible
    cd ansible
    make install
  fi
}

set -e
install_git
install_ansible
