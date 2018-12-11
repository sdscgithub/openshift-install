#!/bin/bash
if [ $# -lt 1 ] ; then
  echo "enter the inventory file name (hosts.xxx) ";
  exit;
fi

cd openshift-ansible \
  && ansible-playbook -i ${PWD}/../inventory/$1 ${PWD}/playbooks/adhoc/uninstall.yml -vvv
