labsubnet=192.168.26
sampleconfd=/home/jmpandya/cluster/conf
#sampleconfd=/home/hadoop/cluster/conf
for i in {11..58};
do
	rsync -rv $sampleconfd/ hadoop@$labsubnet.$i:/opt/hadoop/etc/hadoop/
done;

