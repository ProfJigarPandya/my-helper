labsubnet=192.168.29
cat hosts.bak > hosts
for i in {11..40};
do
	echo $labsubnet.$i hadoop-clone-celab01-$i >> hosts
done;
