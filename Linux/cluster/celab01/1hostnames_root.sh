export HISTCONTROL=ignorespace
labsubnet=192.168.29
passw=test
for i in {11..40};
do
	sshpass -p $passw ssh -o StrictHostKeyChecking=no root@$labsubnet.$i "hostname hadoop-clone-celab01-$i"
done;:
