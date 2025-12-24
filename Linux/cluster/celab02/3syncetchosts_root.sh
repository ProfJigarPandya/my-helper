export HISTCONTROL=ignorespace
labsubnet=192.168.26
passw=test
for i in {11..58};
do
	sshpass -p $passw rsync hosts root@$labsubnet.$i:/etc/
done;

