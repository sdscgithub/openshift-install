#!/bin/bash

dnf update -y

dnf install -y git

# python
dnf install -y python3


PYTHON3_EXECUTABLE=$(ls /usr/bin/python3.* | awk '{print $1}' | head -n 1)
# [ "$(alternatives --list | grep -i python)" == "" ] && 
alternatives --install /usr/bin/python python $PYTHON3_EXECUTABLE 2

# supporting stuff
dnf install -y pyOpenSSL python-cryptography python-lxml java-1.8.0-openjdk-headless patch
dnf install -y iproute python3-dbus python3-PyYAML libsemanage-python yum-utils python3-docker

# python3-3.6.5-1.fc28.x86_64 already installed, skipping
#dnf install -y ansible-python3

# use pip
pip3 install ansible

ansible --version

# Install NetworkManager
dnf install -y NetworkManager; systemctl enable NetworkManager; systemctl start NetworkManager; systemctl status NetworkManager | cat

