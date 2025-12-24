labsubnet=192.168.26
echo -n "" > slaves
for i in {11..58};
do
	echo hadoop-clone-celab02-$i >> slaves
	#echo hadoop-clone-$i
done;
mv slaves conf/slaves
