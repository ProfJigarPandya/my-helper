labsubnet=192.168.27
for i in {11..56};
do
	ssh $labsubnet.$i "start-yarn.sh" 
done;

sh start-historymanager.sh
