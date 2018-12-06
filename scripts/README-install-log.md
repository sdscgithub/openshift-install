# Install log

'''

PLAY RECAP ********************************************************************************************************************
localhost                  : ok=578  changed=241  unreachable=0    failed=0


INSTALLER STATUS **************************************************************************************************************
Initialization             : Complete (0:00:42)
Health Check               : Complete (0:00:40)
etcd Install               : Complete (0:01:38)
Master Install             : Complete (0:06:28)
Master Additional Install  : Complete (0:00:43)
Node Install               : Complete (0:04:11)
Hosted Install             : Complete (0:03:04)
Web Console Install        : Complete (0:01:08)
Service Catalog Install    : Complete (0:02:52)

Wednesday 05 December 2018  18:07:48 -0800 (0:00:00.049)       0:21:34.232 ****
===============================================================================
openshift_ca : Install the base package for admin tooling ------------------------------------------------------------ 162.89s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_ca/tasks/main.yml:10 ---------------------------------
openshift_hosted : Ensure OpenShift pod correctly rolls out (best-effort today) --------------------------------------- 95.95s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_hosted/tasks/wait_for_pod.yml:4 ----------------------
openshift_web_console : Verify that the console is running ------------------------------------------------------------ 56.72s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_web_console/tasks/install.yml:144 --------------------
openshift_node : Install Node package, sdn-ovs, conntrack packages ---------------------------------------------------- 54.44s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_node/tasks/install.yml:2 -----------------------------
openshift_cli : Install clients --------------------------------------------------------------------------------------- 54.11s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_cli/tasks/main.yml:2 ---------------------------------
openshift_node : Install Ceph storage plugin dependencies ------------------------------------------------------------- 49.18s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_node/tasks/storage_plugins/ceph.yml:2 ----------------
Run health checks (install) - Fedora ---------------------------------------------------------------------------------- 39.23s
/home/aha/install-openshift-on-fedora/openshift-ansible/playbooks/openshift-checks/private/install.yml:34 --------------------
template_service_broker : Verify that TSB is running ------------------------------------------------------------------ 38.98s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/template_service_broker/tasks/deploy.yml:52 --------------------
openshift_version : Get available RPM version ------------------------------------------------------------------------- 29.94s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_version/tasks/check_available_rpms.yml:2 -------------
openshift_node : Install iSCSI storage plugin dependencies ------------------------------------------------------------ 19.47s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_node/tasks/storage_plugins/iscsi.yml:2 ---------------
etcd : Install etcd --------------------------------------------------------------------------------------------------- 18.71s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/etcd/tasks/certificates/fetch_server_certificates_from_ca.yml:2
openshift_service_catalog : wait for api server to be ready ----------------------------------------------------------- 16.73s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_service_catalog/tasks/start_api_server.yml:11 --------
openshift_service_catalog : oc_process -------------------------------------------------------------------------------- 16.68s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_service_catalog/tasks/install.yml:55 -----------------
openshift_master : Start and enable master api ------------------------------------------------------------------------ 16.53s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_master/tasks/main.yml:195 ----------------------------
openshift_node : Install GlusterFS storage plugin dependencies -------------------------------------------------------- 16.33s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_node/tasks/storage_plugins/glusterfs.yml:2 -----------
openshift_node : Install dnsmasq -------------------------------------------------------------------------------------- 14.47s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_node/tasks/dnsmasq_install.yml:13 --------------------
openshift_node : Install NFS storage plugin dependencies -------------------------------------------------------------- 12.69s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_node/tasks/storage_plugins/nfs.yml:2 -----------------
openshift_hosted : Create OpenShift registry -------------------------------------------------------------------------- 12.00s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_hosted/tasks/registry.yml:116 ------------------------
openshift_node : Set seboolean to allow gluster storage plugin access from containers (python 3) ---------------------- 11.80s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_node/tasks/storage_plugins/glusterfs.yml:42 ----------
openshift_master : Install Master package ----------------------------------------------------------------------------- 10.80s
/home/aha/install-openshift-on-fedora/openshift-ansible/roles/openshift_master/tasks/main.yml:17 -----------------------------


```
