export HISTCONTROL=ignorespace
labsubnet=192.168.27
passw=test
for i in {11..56};
do	
	echo "host $labsubnet.$i"
	sshpass -p $passw ssh -o StrictHostKeyChecking=no root@$labsubnet.$i "ufw disable"
done;

