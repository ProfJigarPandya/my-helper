labsubnet=192.168.29
for i in {11..40};
do
	ssh $labsubnet.$i "start-yarn.sh" 
done;

sh start-historymanager.sh
