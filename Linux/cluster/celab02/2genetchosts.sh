labsubnet=192.168.26
cat hosts.bak > hosts
for i in {11..58};
do
	echo $labsubnet.$i hadoop-clone-celab02-$i >> hosts
done;
