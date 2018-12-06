
cd openshift-ansible \
  && ansible-playbook -i inventory/hosts.vm playbooks/deploy_cluster.yml -vvv
