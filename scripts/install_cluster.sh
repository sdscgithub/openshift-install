#!/bin/bash
if [ $# -lt 1 ] ; then
  echo "enter the inventory file name (hosts.xxx) ";
  exit;
fi


cd openshift-ansible \
  && ansible-playbook -i ../inventory/$1 playbooks/deploy_cluster.yml -vvv 
