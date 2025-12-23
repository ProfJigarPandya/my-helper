labsubnet=192.168.29
for i in {11..40};
do
	ssh $labsubnet.$i "/opt/hadoop/sbin/start-dfs.sh"  &
done;

