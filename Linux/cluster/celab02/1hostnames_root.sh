export HISTCONTROL=ignorespace
labsubnet=192.168.26
passw=test
for i in {11..58};
do
	sshpass -p $passw ssh -o StrictHostKeyChecking=no root@$labsubnet.$i "hostname hadoop-clone-celab02-$i"
done;:
