labsubnet=192.168.29
sampleconfd=/home/hadoop/cluster/conf
for i in {11..40};
do
	rsync -rv $sampleconfd/ $labsubnet.$i:/opt/hadoop/etc/hadoop/
done;

