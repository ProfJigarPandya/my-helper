labsubnet=192.168.26
for i in {11..58};
do
	ssh hadoop@$labsubnet.$i "rm -rf /opt/hadoop/logs/* /opt/hadoop/tmp/* /opt/hadoop/dfs/*" 
done;
