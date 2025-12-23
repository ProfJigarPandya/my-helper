export HISTCONTROL=ignorespace
labsubnet=192.168.29
passw=test
for i in {11..40};
do
	sshpass -p $passw rsync hosts root@$labsubnet.$i:/etc/
done;

