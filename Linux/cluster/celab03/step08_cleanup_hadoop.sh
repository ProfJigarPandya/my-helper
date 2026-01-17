labsubnet=192.168.27
passw=tset
for i in {11..56};
do
	sshpass -p $passw ssh hadoop@$labsubnet.$i "rm -rf /opt/hadoop/logs/* /opt/hadoop/tmp/* /opt/hadoop/dfs/*" 
done;
