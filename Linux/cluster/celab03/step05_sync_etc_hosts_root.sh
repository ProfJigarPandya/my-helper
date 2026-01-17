export HISTCONTROL=ignorespace
labsubnet=192.168.27
passw=test
for i in {11..56};
do
	sshpass -p $passw rsync hosts root@$labsubnet.$i:/etc/
done;

