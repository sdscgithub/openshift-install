
if grep 'SELINUX=disabled' /etc/selinux/config; then
   sed -i 's/SELINUX=.*$/SELINUX=permissive/g' /etc/selinux/config
   echo "SELINUX will now be enabled; Rebooting"
   reboot
else
   echo 'Selinux is enabled; nothing to do'
fi
