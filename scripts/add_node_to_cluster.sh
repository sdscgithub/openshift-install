
cd openshift-ansible \
  && ansible-playbook -i inventory/hosts.add-nodes playbooks/openshift-node/scaleup.yml -vvv
