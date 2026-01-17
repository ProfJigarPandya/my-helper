labsubnet=192.168.27
sampleconfd=./conf
passw=tset
for i in {11..56};
do
	echo $labsubnet.$i
	sshpass -p $passw rsync -rv $sampleconfd/ hadoop@$labsubnet.$i:/opt/hadoop/etc/hadoop/
done;
