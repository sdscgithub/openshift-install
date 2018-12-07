
#!/bin/bash
if [ $# -lt 1 ] ; then
  echo "enter the inventory file name (hosts.xxx) ";
  exit;
fi

cd openshift-ansible \
  && ansible-playbook -i inventory/$1 playbooks/openshift-node/scaleup.yml -vvv
#  && ansible-playbook -i inventory/hosts.add-nodes playbooks/openshift-node/scaleup.yml -vvv
