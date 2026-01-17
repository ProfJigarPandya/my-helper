labsubnet=192.168.26
echo -n "" > workers
for i in {11..56};
do
	echo hadoop-clone-celab03-$i
	echo hadoop-clone-celab03-$i >> workers
done;
mv workers conf/workers
