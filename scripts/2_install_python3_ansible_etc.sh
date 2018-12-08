#!/bin/bash

# Ansible
sudo yum -y install     https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm --allowerasing

# Install packages for Ansible
sudo yum -y --enablerepo=epel install ansible pyOpenSSL

ansible --version

# Disable EPEL repository globally so not to be used accidently
sudo sed -i -e "s/^enabled=1/enabled=0/" /etc/yum.repos.d/epel.repo

# Install openshift-ansible
cd ~
git clone https://github.com/openshift/openshift-ansible
cd openshift-ansible
git checkout release-3.9

# python supports
sudo dnf install libsemanage-python

# Installing Docker
sudo dnf install -y docker-1.13.1

# Verify correct version
rpm -V docker-1.13.1
docker version

# Start docker
sudo systemctl enable docker
sudo systemctl start docker
systemctl is-active docker

# Install NetworkManager
dnf install -y NetworkManager; systemctl enable NetworkManager; systemctl start NetworkManager; systemctl status NetworkManager | cat

