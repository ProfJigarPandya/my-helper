export HISTCONTROL=ignorespace
labsubnet=192.168.27
passw=hadoop0702
for i in {11..56};
do
        sshpass -p $passw ssh -o StrictHostKeyChecking=no hadoop@$labsubnet.$i
#su -
#rootpassword
#sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config;systemctl restart sshd.service;exit;
#Ctrl+D
done;

