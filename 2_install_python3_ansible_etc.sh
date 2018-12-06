
dnf install -y python3
# python3-3.6.5-1.fc28.x86_64 already installed, skipping

pip3 install ansible
# Successfully installed ansible-2.6.4 bcrypt-3.1.4 paramiko-2.4.2 pyasn1-0.4.4 pynacl-1.2.1
# however. later, I got the message 
# TASK [Run variable sanity checks] ************************************************************************************
#task path: /root/install-openshift-on-fedora/openshift-ansible/playbooks/init/sanity_checks.yml:13
#Sunday 23 September 2018  19:10:31 +0200 (0:00:00.061)       0:00:13.599 ******
#fatal: [localhost]: FAILED! => {
    #"msg": "last_checked_host: localhost, last_checked_var: ansible_python;openshift-ansible requires Python 3 for Fedora; For information on enabling Python 3 with Ansible, see https://docs.ansible.com/ansible/python_3_support.html"
#}


# On https://github.com/openshift/openshift-ansible/issues/7952, we get the hint
#the instalation can be done like follows:
#dnf install -y ansible-python3

ansible --version
