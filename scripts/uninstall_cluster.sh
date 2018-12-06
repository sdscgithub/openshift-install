#!/bin/bash

cd openshift-ansible \
  && ansible-playbook -i ${PWD}/inventory/$1 ${PWD}/playbooks/adhoc/uninstall.yml -vvv
