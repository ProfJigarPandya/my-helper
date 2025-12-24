labsubnet=192.168.26
for i in {11..58};
do
	ssh $labsubnet.$i "/opt/hadoop/sbin/stop-dfs.sh" &
done;
