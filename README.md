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
