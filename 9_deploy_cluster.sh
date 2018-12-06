
cd openshift-ansible \
  && ansible-playbook -i inventory/hosts.localhost playbooks/deploy_cluster.yml -vvv
