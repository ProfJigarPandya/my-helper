labsubnet=192.168.26
for i in {11..58};
do
	ssh $labsubnet.$i "start-yarn.sh" 
done;

sh start-historymanager.sh
