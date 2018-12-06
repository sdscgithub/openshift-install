
cd openshift-ansible \
  && ansible-playbook -i ./inventory/hosts.vm playbooks/prerequisites.yml -vvv
