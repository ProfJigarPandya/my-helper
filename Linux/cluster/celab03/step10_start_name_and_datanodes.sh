labsubnet=192.168.27
passw=tset
for i in {11..56};
do
	sshpass -p $passw ssh hadoop@$labsubnet.$i "/opt/hadoop/sbin/start-dfs.sh" &
done;

