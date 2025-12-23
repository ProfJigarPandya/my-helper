labsubnet=192.168.29
for i in {11..40};
do
	ssh $labsubnet.$i "rm -rf /opt/hadoop/logs/* /opt/hadoop/tmp/* /opt/hadoop/dfs/*" 
done;
