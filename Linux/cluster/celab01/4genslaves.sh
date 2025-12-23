labsubnet=192.168.29
echo -n "" > slaves
for i in {11..40};
do
	echo hadoop-clone-celab01-$i >> slaves
	#echo hadoop-clone-$i
done;
mv slaves conf/slaves
