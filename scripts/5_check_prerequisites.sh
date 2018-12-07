#!/bin/bash
if [ $# -lt 1 ] ; then
  echo "enter the inventory file name (hosts.xxx) ";
  exit;
fi

echo "Using inventory file: $1"

cd ../openshift-ansible \
  && ansible-playbook -i ../inventory/$1 playbooks/prerequisites.yml -vvv
