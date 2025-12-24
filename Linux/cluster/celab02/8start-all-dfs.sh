labsubnet=192.168.26
for i in {11..58};
do
	ssh hadoop@$labsubnet.$i "/opt/hadoop/sbin/start-dfs.sh"
done;

