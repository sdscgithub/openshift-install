# Installing openshift origin cluster

Documenting process of setting local openshift cluster using VMs - vmware or virtualbox

## Install MobaXterm - your friend of friends 
** TODO: Eli to document setting up MobaXterm 

## Install/build a Centos7 image - 
** TODO: Eli to document this with README-vm.md


## Setup your master and nodes with minimum requirements

```
$ sudo yum install docker
$ sudo groupadd docker
$ sudo usermod -aG docker $USER

```

## Update your group membership and check docker health

```
$ su - $USER
$ docker ps
$ sudo systemctl start docker
$ sudo systemctl enable docker
$ docker network inspect -f "{{range .IPAM.Config }}{{ .Subnet }}{{end}}" bridge

```

## Do this on one of the nodes only pick one: master is OK
$ sudo yum install -y wget
$ wget https://github.com/openshift/origin/releases/download/v3.6.0/openshift-origin-client-tools-v3.6.0-c4dd4cf-linux-64bit.tar.gz

$ sudo yum groupinstall 'Development Tools'
$ git clone https://github.com/openshift/origin.git
$ sudo yum install docker-machine

$ which pip
$ which easyinstall
$ sudo easy_install pip
$ sudo pip install mdv

```

>>Not sure we need this
>>$ oc adm policy add-cluster-role-to-group system:openshift:templateservicebroker-client system:unauthenticated system:authenticated


#### Ansible Playbook Bundle (Optional - for later)

```

$ sudo wget https://raw.githubusercontent.com/ansibleplaybookbundle/ansible-playbook-bundle/master/scripts/apb-docker-run.sh && mv apb-docker-run.sh apb && chmod +x apb
$ which apb


$ sudo chmod +x apb
$ sudo cp apb /usr/local/bin
$ which apb
$ apb --help


$ wget  https://raw.githubusercontent.com/ansibleplaybookbundle/ansible-playbook-bundle/release-1.1/templates/openshift-permissions.template.yaml > openshift-permissions.template.yaml

```

```
## Install OO v3.6.0

```

$ yum -y install epel-release centos-release-openshift-origin36
$ sudo yum -y install epel-release centos-release-openshift-origin36
$ sudo yum -y install origin origin-clients vim-enhanced atomic-openshift-utils
$ sudo yum install openshift-ansible-playbooks

```

### Configure NetworkManager
* Note: The networkmanager is needed because we will use nip.io to be our default DNS and nip.io will resolve 
	our local host/node names to be the local ip addr. 
```
$ sudo systemctl enable NetworkManager --now
$ sudo vim /etc/NetworkManager/NetworkManager.conf 
$ sudo vim /etc/resolv.conf
$ sudo systemctl restart NetworkManager
$ sudo systemctl status NetworkManager

```

## Install ansible version 2.2.2.0 - compatible with OO v3.6.0

```
$ sudo yum -y install httpd-tools gcc python-devel python-pip
$ rpm -qa | grep ansible
$ sudo pip uninstall ansible
$ sudo rpm -e ansible --force
$ wget http://mirror.centos.org/centos/7/os/x86_64/Packages/python-urllib3-1.10.2-5.el7.noarch.rpm
$ sudo yum install python-urllib3-1.10.2-5.el7.noarch.rpm 
$ pip -v install ansible==2.2.2.0
$ which ansible
$ ansible --version

```

### Prepare root ssh key for remote ansible install

* Note: for this example, the cluster only has 2 nodes 192.168.122.100,101 
	other config might have more nodes
```

$ ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
$ sudo ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
$ for i in 192.168.122.100 192.168.122.101; do ssh-copy-id root@$i; done

```

### Check for the right version and use ansible-playbood to provision openshift origin v3.6.0 cluster

```

$ sudo su
$ which ansible-playbook
$ ansible-playbook --version
$ ansible-playbook -i ./hosts /usr/share/ansible/openshift-ansible/playbooks/byo/config.yml -vvv 

```

Note: at this point, your openshift origin cluster will be building. It takes typically 15-30 min and at the end
	you should be getting something like

>>
>> 



#### If something goes awry, try to investigate and restart the provision

```

$ sudo ansible-playbook -i ./hosts /usr/share/ansible/openshift-ansible/playbooks/byo/config.yml --limit @/usr/share/ansible/openshift-ansible/playbooks/byo/config.retry

```

