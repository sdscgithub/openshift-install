# Prep nodes for installation of openshift on a local cluster with fix IPs

Capture steps to install a local cluster of openshift-origin for testing

## Pre-flight

* Fill out the 'inventory' file in this root folder. A parser will set the parameters for subsequent scripts
* Run the following scripts manually for now. A more fancy menu to be done later

```
$ bash install/install_git.sh
$ bash install/enable_selinux.sh

```

## Manual method

* Use this step-by-step menu for better control of the installation environment.

```

$ sudo bash install/2_install_python3_ansible_etc.sh
$ sudo bash install/3_fix_etc_hosts.sh
$ sudo bash install/4_install_misc.sh
$ sudo bash install/5_enable_NetworkManager.sh
$ sudo bash install/6_git_download_openshift_ansible.sh
$ sudo bash install/7_make_sure_python3_is_used.sh
$ sudo bash install/8_prepare_ssh_keys.sh
$ sudo bash install/9_check_prerequisites.sh
$ sudo bash install/10_deploy_cluster.sh

```

## make NetworkManager not over writting /etc/resolv.conf

Create a script as mentioned below in /etc/Networkmanager/dispatcher.d/ and don't forget to make it executable:

```
#!/bin/bash
#
# Override /etc/resolv.conf and tell
# NetworkManagerDispatcher to go pluck itself.
#
# scripts in the /etc/NetworkManager/dispatcher.d/ directory
# are called alphabetically and are passed two parameters:
# $1 is the interface name, and $2 is "up" or "down" as the
# case may be.

# Here, no matter what interface or state, override the
# created resolver config with my config.

cp -f /etc/resolv.conf.custom /etc/resolv.conf
```

* Create a script (DNSoverride) in /etc/NetworkManager/dispatcher.d

```
[root@localhost dispatcher.d]# cat DNSoverride
#!/bin/bash
#
# Override /etc/resolv.conf and tell
# NetworkManagerDispatcher to go pluck itself.
#
# scripts in the /etc/NetworkManager/dispatcher.d/ directory
# are called alphabetically and are passed two parameters:
# $1 is the interface name, and $2 is "up" or "down" as the
# case may be.

# Here, no matter what interface or state, override the
# created resolver config with my config.

cp -f /etc/resolv.conf.custom /etc/resolv.conf

```

* entry of /etc/resolv.conf.custom

```
search nip.io
nameserver 8.8.8.8
nameserver 4.4.2.2

```
