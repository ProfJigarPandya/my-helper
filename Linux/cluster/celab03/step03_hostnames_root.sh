export HISTCONTROL=ignorespace
labsubnet=192.168.27
passw=test
for i in {11..56};
do
	sshpass -p $passw ssh -o StrictHostKeyChecking=no root@$labsubnet.$i "hostname hadoop-clone-celab03-$i"
done;:
