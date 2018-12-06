
MYIP=$(ifconfig ens33 | grep inet | head -n 1 | awk '{print $2}')
sed -i "s/127\.0\.0\.1/$MYIP/g" /etc/hosts

