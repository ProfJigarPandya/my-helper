labsubnet=192.168.27
cat hosts.bak > hosts
for i in {11..56};
do
	echo $labsubnet.$i hadoop-clone-celab03-$i >> hosts
done;
